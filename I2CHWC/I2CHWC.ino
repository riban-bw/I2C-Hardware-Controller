#include <Wire_slave.h>

/*  Physical user interface module provides rotary encoders, switches and potentiometer input as I2C device
 *  Copyright riban 2019
 *  Licence LGPL3
 *  Author Brian Walton (brian@riban.co.uk)
 *
 *  Provides ADC with noise filtering and configurable resolution - better noise filtering at lower resolution
 */

#define I2CADDR 8 // Set HWC I2C address (must be unique on I2C bus)
#define POTENTIOMETERS 8 // Set quantity of end-stopped knobs and faders
#define ENCODERS 0 // Set quantity of continuous rotary knobs
#define SWITCHES 0 // Set quantity of on / off switches
#define ADC_BITS 10 // Set analogue to digital conversion resolution (max 12 bits)

static const uint8_t anValid[] = {0,1,1,0,1,0,0,1,1,0,0,1,0,1,1,0}; // Table of valid encoder states
static const uint8_t AnaloguePins[] = {4,5,6,7,8,9,10,11}; // Table of ADC input pins
//static const uint8_t AnaloguePins[] = {10,11};
static const uint8_t InterruptPin = 2; // GPI pin used to indicate values have changed
static const uint8_t SwitchPinsX[] = {32,0,1,17,18,19,20,21,22,23,24,25}; // Table of GPI matrix input pins
static const uint8_t SwitchPinsY[] = {26,27,28,29,30,31,12,13,14}; // Table of GPI matrix output pins
static const unsigned int ADC_MASK_BITS = 12 - ADC_BITS; // Quantity of bits to mask ADC
static const int ADC_FILTER_SAMPLES = 32 >> ADC_MASK_BITS; // Quantity of samples to filter ADC

uint8_t g_nLastRead = 0; // The index of the controller last read

enum CONTROLLER_TYPE
{
    CONTROLLER_TYPE_ADC,
    CONTROLLER_TYPE_ENCODER,
    CONTROLLER_TYPE_SWITCH
};

/** Controller structure represents each type of controller */
struct Controller
{
    bool dirty = false; // True if value has changed since last I2C read
    int value = 0; // Value
    uint8_t count = 0; // Used to filter controller
    uint8_t type; // Controller type (see CONTROLLER_TYPE)
    int getValue() // Get the controller value with any required processing
    {
        int nValue = value;
        switch(type)
        {
        case CONTROLLER_TYPE_ADC:
            nValue >>= ADC_MASK_BITS; // Returns value scaled by ADC bits
            break;
        case CONTROLLER_TYPE_ENCODER:
            nValue = value;
            value = 0; // Reset relative position
            break;
        case CONTROLLER_TYPE_SWITCH:
            nValue = value;
        }
        return nValue;
    }
};

int g_nI2Cregister = 0; // Address of I2C register requested by I2C master (index of controller - 1 based)
Controller g_anControllers[POTENTIOMETERS + ENCODERS + SWITCHES];

void setup()
{
    Serial.begin(115200); //!@todo Remove debug
    delay(1000);
    Serial.println("I2C HWC (c)riban 2019");
    // Configure GPI pins
    for(int i = 0; i < sizeof(AnaloguePins); ++i)
        pinMode(AnaloguePins[i], INPUT_ANALOG);
    for(int i = 0; i < sizeof(SwitchPinsX); ++i)
        pinMode(SwitchPinsX[i], INPUT_PULLUP);
    for(int i = 0; i < sizeof(SwitchPinsY); ++i)
        pinMode(SwitchPinsY[i], OUTPUT);
    pinMode(InterruptPin, OUTPUT);
    // Configure controller objects
    for(int i = 0; i < POTENTIOMETERS; ++i)
        g_anControllers[i].type = CONTROLLER_TYPE_ADC;
    for(int i = POTENTIOMETERS; i < POTENTIOMETERS + ENCODERS; ++i)
        g_anControllers[i].type = CONTROLLER_TYPE_ENCODER;
    for(int i = POTENTIOMETERS + ENCODERS; i < POTENTIOMETERS + ENCODERS + SWITCHES; ++i)
        g_anControllers[i].type = CONTROLLER_TYPE_SWITCH;

    for(int i = 0; i < POTENTIOMETERS + ENCODERS + SWITCHES; ++i)
    {
        Serial.print("Controller ");
        Serial.print(i);
        Serial.print(" type: ");
        switch(g_anControllers[i].type)
        {
        case CONTROLLER_TYPE_ADC:
            Serial.println("ADC");
            break;
        case CONTROLLER_TYPE_ENCODER:
            Serial.println("Encoder");
            break;
        case CONTROLLER_TYPE_SWITCH:
            Serial.println("Switch");
            break;
        }
    }

    // Configure I2C interface
    Wire.begin(I2CADDR);
    Wire.onRequest(onI2Crequest);
    Wire.onReceive(onI2Creceive);
}

/** @brief  Read ADC
*/
void readAdc()
{
    //Monitor analogue inputs (potentiometers)
    for(int i = 0; i < POTENTIOMETERS; ++i)
    {
        // Set the ADC external multiplex address
        //!@todo Avoid interleave of ADC mux (digitlWrite may be expensive)
        digitalWrite(SwitchPinsY[i & 0x01], i & 0x01);
        digitalWrite(SwitchPinsY[i & 0x02], i & 0x02);
        digitalWrite(SwitchPinsY[i & 0x04], i & 0x04);
        int nAnaRead = analogRead(AnaloguePins[i%sizeof(AnaloguePins)]);
        if(abs(nAnaRead - g_anControllers[i].value) < (1 << ADC_MASK_BITS))
        {
            ++g_anControllers[i].count = 0;
            continue;
        }
        if(++g_anControllers[i].count < ADC_FILTER_SAMPLES)
            continue;
        ++g_anControllers[i].count = 0;
        g_anControllers[i].value = nAnaRead;
        g_anControllers[i].dirty = true;

        Serial.print("Controller ");
        Serial.print(i);
        Serial.print(" = ");
        Serial.println(g_anControllers[i].value >> ADC_MASK_BITS, HEX);
    }
}

void loop()
{
    delay(1); //!@todo Loop delay is for ADC stability - remove when full implementation complete

    readAdc(); //Updates the potentiometers

    for(uint8_t nY = 0; nY < sizeof(SwitchPinsY); ++nY)
    {
        // This is the iteration for setting outupt of Y-axis of switch matrix
        //!@todo Optimise digital read / write operations
        for(uint8_t nOutput = 0; nOutput < sizeof(SwitchPinsY); ++nOutput)
            digitalWrite(SwitchPinsY[nOutput], HIGH);
        digitalWrite(SwitchPinsY[nY], LOW);
        for(uint8_t nX = 0; nX < sizeof(SwitchPinsX); ++nX)
        {
            // This is the iteration for reading the X-axis of switch matrix
            uint8_t nValue = digitalRead(SwitchPinsX[nX]);
            //!@todo Implement encoder and switch
            if(nY * sizeof(SwitchPinsX) + nX < POTENTIOMETERS / 3)
            {
            }
        }
    }
    getDirty(); // Check for any value changes since last read or processing cycle
}

/** @brief  Get the next controller who's values has changed since last I2C request
 *  @retval uint8_t Index of controller (1 based) or 0 for none
 *  @note   Avoids one controller hogging bus by starting scan after last read controller
 */
uint8_t getDirty()
{
    // Iterate through all controllers looking for changed, starting at controller after last read then wrapping round
    for(uint8_t i = g_nLastRead; i < POTENTIOMETERS + ENCODERS + SWITCHES; ++i)
    {
        if(g_anControllers[i].dirty)
        {
            digitalWrite(InterruptPin, LOW);
            return(i + 1);
        }
    }
    for(uint8_t i = 0; i < g_nLastRead; ++i)
    {
        if(g_anControllers[i].dirty)
        {
            digitalWrite(InterruptPin, LOW);
            return(i + 1);
        }
    }
    digitalWrite(InterruptPin, HIGH);
    return 0;
}

/** @brief  Sends controller 16-bit value to I2C master
 *  @param  controller Controller index (one based)
 */
void sendValue(uint8_t controller)
{
    if(controller == 0 || controller-- > POTENTIOMETERS + ENCODERS + SWITCHES)
        return;
    uint8_t anValue[] = {g_anControllers[controller].getValue() & 0xFF, g_anControllers[controller].getValue() >> 8};
    Wire.flush();
    Wire.write(anValue, 2);
    g_anControllers[controller].dirty = false;
    getDirty(); // Update dirty status incase this was last changed controller
}

/** @brief  Handle I2C request for data from master
 *  @note   Send the requested register (controller) value or index of next changed controller
 */
void onI2Crequest()
{
    if(g_nI2Cregister)
    {
        // Send value of requested controller
        sendValue(g_nI2Cregister);
        g_nI2Cregister = 0;
        return;
    }
    // Send index of first changed controller or zero if all clean
    Wire.flush(); // Seem to need to flush I2C to ensure single byte of data is sent correctly
    Wire.write(getDirty());
}

/** @brief  Handle I2C message from master
 *  @param  nBytes Quantity of bytes in message
 *  @note   Expects single byte containing the register address for next I2C read operation
 */
void onI2Creceive(int nBytes)
{
    if(nBytes < 0)
        return;
    g_nI2Cregister = Wire.read();
    g_nLastRead = g_nI2Cregister;
    while(Wire.available())
        Wire.read(); // Clear buffer as only expecting single byte
}
