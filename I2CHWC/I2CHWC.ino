#include <Wire_slave.h>

/*  Physical user interface module provides rotary encoders, switches and potentiometer input as I2C device
 *  Copyright riban 2019
 *  Licence LGPL3
 *  Author Brian Walton (brian@riban.co.uk)
 *  
 *  Provides ADC with noise filtering and configurable resolution - better noise filtering at lower resolution
 */

#define I2CADDR 8 //!@todo Detect I2C address at startup from GPI
#define POTENTIOMETERS 2
#define ENCODERS 0
#define SWITCHES 1

static const uint8_t anValid[16] = {0,1,1,0,1,0,0,1,1,0,0,1,0,1,1,0}; //Table of valid encoder states
//static const uint8_t AnaloguePins[9] = {3,4,5,6,7,8,9,10,11};
static const uint8_t AnaloguePins[] = {10,11};
static const uint8_t InterruptPin = 2;
static const uint8_t SwitchPinsX[12] = {32,0,1,17,18,19,20,21,22,23,24,25};
static const uint8_t SwitchPinsY[9] = {26,27,28,29,30,31,12,13,14};
static const unsigned int ADC_BITS = 11; // Resolution of ADC (max 12 bit)
static const unsigned int ADC_MASK_BITS = 12 - ADC_BITS; // Quantity of bits to mask ADC
static const int ADC_FILTER_SAMPLES = 32 >> ADC_MASK_BITS; // Quantity of samples to filter ADC

enum {
  SENSOR_TYPE_ADC,
  SENSOR_TYPE_ENCODER,
  SENSOR_TYPE_SWITCH
};

struct Sensor {
  bool dirty = false; // True if value has changed since last I2C read
  int value = 0; // Value
  uint8_t count = 0; // Used to filter sensor
  uint8_t type;
  int getValue() {
    int nValue = value;
    switch(type) {
      case SENSOR_TYPE_ADC:
        nValue >>= ADC_MASK_BITS; // Returns value scaled by ADC bits
        break;
      case SENSOR_TYPE_ENCODER:
        nValue = value;
        value = 0;
        break;
      case SENSOR_TYPE_SWITCH:
        nValue = value;
    }
    return nValue;
  }
};

uint8_t g_nRequestedSensor = 0; // If zero then request will return next / all changed sensors else request will return value of requested sensor
int g_nI2Caddress = 0; // Address of sennsor requested by I2C master
Sensor g_anSensors[POTENTIOMETERS + ENCODERS + SWITCHES];

void setup() {
  Serial.begin(115200); //!@todo Remove debug
  for(int i = 0; i < sizeof(AnaloguePins); ++i)
    pinMode(AnaloguePins[i], INPUT_ANALOG);
  for(int i = 0; i < sizeof(SwitchPinsX); ++i)
    pinMode(SwitchPinsX[i], INPUT_PULLUP);
  for(int i = 0; i < sizeof(SwitchPinsY); ++i)
    pinMode(SwitchPinsY[i], OUTPUT);
  for(int i = 0; i < POTENTIOMETERS; ++i)
    g_anSensors[i].type = SENSOR_TYPE_ADC;
  for(int i = POTENTIOMETERS; i < POTENTIOMETERS + ENCODERS; ++i)
    g_anSensors[i].type = SENSOR_TYPE_ENCODER;
  for(int i = POTENTIOMETERS + ENCODERS; i < POTENTIOMETERS + ENCODERS + SWITCHES; ++i)
    g_anSensors[i].type = SENSOR_TYPE_SWITCH;
  
  Wire.begin(I2CADDR);
  Wire.onRequest(onI2Crequest);
  Wire.onReceive(onI2Creceive);
  pinMode(InterruptPin, OUTPUT);
  pinMode(31, INPUT_PULLUP);
}

void loop() {
  delay(1);
  //Monitor analouge inputs (potentiometers)
  for(int i = 0; i < POTENTIOMETERS; ++i) {
    int nAnaRead = analogRead(AnaloguePins[i]);
    if(abs(nAnaRead - g_anSensors[i].value) < (1 << ADC_MASK_BITS)) {
      ++g_anSensors[i].count = 0;
      continue;
    }
    if(++g_anSensors[i].count < ADC_FILTER_SAMPLES)
      continue;
    ++g_anSensors[i].count = 0;
    g_anSensors[i].value = nAnaRead;
    g_anSensors[i].dirty = true;

    Serial.print("Sensor ");
    Serial.print(i);
    Serial.print(" = ");
    Serial.println(g_anSensors[i].value >> ADC_MASK_BITS, HEX);
  }

  int nValue = digitalRead(31);
  if(nValue != g_anSensors[POTENTIOMETERS + ENCODERS].value) {
    g_anSensors[POTENTIOMETERS + ENCODERS].value = nValue;
    g_anSensors[POTENTIOMETERS + ENCODERS].dirty = true;
  }
  
  for(int i = 0; i < sizeof(SwitchPinsY); ++i) {
      for(int i = 0; i < sizeof(SwitchPinsX); ++i) {
        //!@todo Monitor rotary encoders
        //!@todo Monitor button presses
      }
  }
  getDirty();
}

/** @brief  Get the first sensor who's values has changed since last I2C request
 *  @retval uint8_t Index of sensor (1 based) or 0 for none
 */
uint8_t getDirty() {
  uint8_t i;
  for(i = 0; i < POTENTIOMETERS + ENCODERS + SWITCHES; ++i) {
    if(g_anSensors[i].dirty) {
      digitalWrite(InterruptPin, LOW);
      return(i + 1);
    }
  }
  digitalWrite(InterruptPin, HIGH);
  return 0;
}

/** @brief  Sends sensor 16-bit value to I2C master
 *  @param  sensor Sensor index (one based)
 */
void sendValue(uint8_t sensor) {
  if(sensor == 0 || sensor-- > POTENTIOMETERS + ENCODERS + SWITCHES)
    return;
  uint8_t anValue[] = {g_anSensors[sensor].getValue() & 0xFF, (g_anSensors[sensor].getValue() & 0xFF00) >> 8};
  Wire.write(anValue, 2);
  g_anSensors[sensor].dirty = false;
  getDirty();
}

/** @brief  Handle I2C request for data from master
 *  
 */
void onI2Crequest() {
  if(g_nI2Caddress) {
    // Send value of requested sensor
    sendValue(g_nI2Caddress);
    g_nI2Caddress = 0;
    return;
  }
  // Send index of first changed sensor (must be called repeatedly to get all changes)
  uint8_t nDirty = getDirty();
  Serial.print("Dirty = ");
  Serial.println(nDirty, HEX);
  Wire.write(nDirty);
}

/** @brief  Handle I2C message from master
 *  @param  nBytes Quantity of bytes in message
 */
void onI2Creceive(int nBytes) {
  if(nBytes < 0)
    return;
  g_nI2Caddress = Wire.read();
  while(Wire.available())
    Wire.read();
}
