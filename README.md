# I2C-Hardware-Controller
A hardware controller providing rotary encoders, switches and potentiometer values via I2C

This project provides an interface to other applications via 40 continuous rotary encoders, 40 two poisition switches and 64 end-stopped variable resistors (potentiometers). The link to the host device is via I2C which requires a clock and data signal. Power may be provided by the host as 3.3V or 5V supply plus ground. (Both devices must have a common ground.) The host may continuously poll the hardware controller (HWC) for changes or use a dedicated signal to trigger interrupts (or similar event handling routine). Several HWC may be cascaded to increase the quantity of controls as required.

Rotary encoders provide the value of change since last read which is a postive integer for clockwise rotation and negative for counter-clockwise rotation. Slow rotation changes value by one unit whilst faster rotation changes value by ten units. It is the responsibility of the host device / application to store the absolute value calculated from the relative postion values sent by the HWC.

Switches provide on / off value with 50ms debounce filtering, i.e. readings are ignored for 50ms after a switch changes position to avoid false retriggering. Rotary encoders commonly include a push switch which may be wired as a switch control or separate push buttons / toggle switches / slide switches / etc. may be attached.

End-stopped variable resistance (potentiometer) controls provide a maximum of 12-bit resolution. A noise filte is applied which increases the latency and / or reduces the resolution of ADC. (Each bit reduction improves latency by one sampple period and reduces noise.) Noise is the retriggering of analogue values when there is no physical change of knob position. At 12-bit resolution this is quite common but reducing to 11-bits cleans the signal significantly. The required filter may depend on the quality of potentiometer and wiring.

Note: Switches and rotary encoders are X-Y multiplexed so cannot use a common ground, i.e. both polls of each switch and all three pins of a rotary encoder need to be connected to the HWC matrix. To simplify wiring, each rotary encoder and associated swich share a common matrix pin resulting in each rotary encoder / switch combination requiring 4 wires.

Note: End-stopped contols are multiplexed but share common +3.3V and 0V supply rails which may ease wiring but care should be taken to avoid electrical noise.

The core of the HWC is a STM32F103 from STMicroelectronics in the form of a Maple Leaf Mini development board. This board accepts 5V or 3.3V supply. It operates at 3.3V with some 5V tollerant pins. The HWC is designed to interface with 3.3V devices, e.g. Raspberry Pi.

The potentiometers are connected via 8 x CD4051B 8x1 analogue multiplex chips. It is possible to omit the multiplexers and use just 8 potentiometers. Unused inputs are tied to ground to avoid false trigger due to noise.

The switches and rotary encoders (which are just a pair of bi-phase oriented swiches) are connected as a X-Y matrix with a 1N4148 signal diode between one switch pole and the matrix bus.

The HWC acts as a I2C slave with I2C address configurable at compile time. (This may change in future to allow user configuration.) Connections to the master device is via 3 signal wires and 2 power wires thus:

        ---------------------                      -----------------------
        |                   |-------3.3/5V---------|                     |
        | Master I2C device |-------I2C CLK--------| Hardware Controller |
        | e.g. Raspberry Pi |-------I2C SDA--------|                     |
        |                   |---------INT----------|                     |
        |                   |---------0V-----------|                     |
        ---------------------                      -----------------------

The INT pin is held high under normal condition and goes low (0V) when there has been a change of value of any controller on the HWC. When all changed values have been read by the I2C master the INT signal returns high.

# I2C Signal Flow

The I2C master may request the value of any control by sending the control number (1...144) as a single byte message then reading a 16-bit (two byte) response. If the I2C master sends a request for controller zero, the next I2C read will return the index of the first controller with a value that has changed since its last read. Psudo code may look like:

```
while(GPI_INT == 0) {
  reg = I2C_GET_REG(0);
  if(reg != 0) {
    value = I2C_GET_REG(reg);
  }
}
```

