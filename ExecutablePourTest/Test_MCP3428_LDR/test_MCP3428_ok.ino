#include <MCP342x.h>



////////////////////////////////////////////
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h> //You can download this library below

Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();  //set default address 0x40
#if defined(ARDUINO_ARCH_SAMD)  
// for Zero, output on USB Serial console, remove line below if using programming port to program the Zero!
   #define Serial SerialUSB
#endif


MCP342x mcp3428;

void setup(void)
{
  Serial.begin(115200);
  Wire.begin (33, 32);

    ////////////////////////////////////////
    
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
  pwm.setPin(2, 4095,0);
  Serial.print("Pin Power MCP HIGH"); delay(4000);
  ////////////////////////////////////////

  Wire.begin();
  Serial.begin(9600);
 
  mcp3428.init(MCP342x::L, MCP342x::L);
  mcp3428.selectChannel(MCP342x::CHANNEL_2, MCP342x::GAIN_1);
  

}

 
  long value = 0;
  MCP342x::Config status;
  // Initiate a conversion; convertAndRead() will wait until it can be read
  uint8_t err = adc.convertAndRead(MCP342x::channel2, MCP342x::oneShot,
           MCP342x::resolution16, MCP342x::gain1,
           1000000, value, status);
  if (err) {
    Serial.print("Convert error: ");
    Serial.println(err);
  }
  else {
    Serial.print("Value: ");
    Serial.println(value);
  }

  delay(100);
}
