/** I2C HWC Test
  This utility monitors the interrupt pin and prints status.
  To compile: gcc -o i2ctest -lwiringPi i2ctest.c
  Run it with ./i2ctest
  Each time a control is changed a print of "Interrupt" followed by which control and its value.
  Press a key to exit program
*/

#include <stdio.h>
#include <stdint.h>
#include <wiringPi.h>
#include <wiringPiI2C.h>

#define INTERRUPT_PIN 7
#define HWC_ADDR 8

int hwci2c_fd;

void onInterrupt()
{
  printf("Interrupt\n");
  int i;
  uint8_t reg;
  while(reg = wiringPiI2CRead(hwci2c_fd)) {
    int16_t nValue = wiringPiI2CReadReg16(hwci2c_fd, reg);
    printf("Control %d changed to value: %d\n", reg, nValue);
  }
}

void main()
{
  printf("I2C Test\n");
  wiringPiSetup();
  hwci2c_fd = wiringPiI2CSetup(HWC_ADDR);
  wiringPiI2CWriteReg8(hwci2c_fd, 0, 0);
  wiringPiISR(INTERRUPT_PIN, INT_EDGE_FALLING, onInterrupt);
  getchar();
}
