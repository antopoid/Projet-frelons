#include <Wire.h>
#include <Adafruit_PWMServoDriver.h> //You can download this library below

Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();  //set default address 0x40
#if defined(ARDUINO_ARCH_SAMD)  
// for Zero, output on USB Serial console, remove line below if using programming port to program the Zero!
   #define Serial SerialUSB
#endif
void setup() {
  Wire.begin(33, 32); // Set if your using can use any two pins > SDA to #2 and SCL to #14
  
  Serial.begin(9600);
  Serial.print("14CORE | PCA9685 Test Code "); delay(4000);
  pwm.begin();
  pwm.setPWMFreq(1600);  // Set  This is the maximum PWM frequency

  // if you want to really speed stuff up, you can go into 'fast 400khz I2C' mode
  // Note some i2c devices dont like this so much so if you're sharing the bus
#ifdef TWBR     // Set save I2C bitrate
  uint8_t twbrbackup = TWBR;  
  // must be changed after calling Wire.begin() (inside pwm.begin())
  TWBR = 12; // upgrade to 400KHz!
#endif
}
void loop() {


  pwm.setPin(14,4095,0);
  pwm.setPin(15,0,0);
  delay(1000);
  pwm.setPin(14,0,0);
  pwm.setPin(15,4095,0);
  delay(1000);
  
 

}
