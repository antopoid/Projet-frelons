#include <Wire.h>
#include <Adafruit_PWMServoDriver.h> //You can download this library below

Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();  //set default address 0x40
#if defined(ARDUINO_ARCH_SAMD)  
// for Zero, output on USB Serial console, remove line below if using programming port to program the Zero!
   #define Serial SerialUSB
#endif


// ESP32 I2C Scanner
// Based on code of Nick Gammon  http://www.gammon.com.au/forum/?id=10896
// ESP32 DevKit - Arduino IDE 1.8.5
// Device tested PCF8574 - Use pullup resistors 3K3 ohms !
// PCF8574 Default Freq 100 KHz 

void setup()
{
  Serial.begin (115200);  




Wire.begin(33, 32); // Set if your using can use any two pins > SDA to #2 and SCL to #14
  
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


void Scanner ()
{
  Serial.println ();
  Serial.println ("I2C scanner. Scanning ...");
  byte count = 0;

  Wire.begin();
  for (byte i = 8; i < 120; i++)
  {
    Wire.beginTransmission (i);          // Begin I2C transmission Address (i)
    if (Wire.endTransmission () == 0)  // Receive 0 = success (ACK response) 
    {
      Serial.print ("Found address: ");
      Serial.print (i, DEC);
      Serial.print (" (0x");
      Serial.print (i, HEX);     // PCF8574 7 bit address
      Serial.println (")");
      count++;
    }
  }
  Serial.print ("Found ");      
  Serial.print (count, DEC);        // numbers of devices
  Serial.println (" device(s).");
}

void loop()
{
    /*pwm.setPWM(2, 4096, 4096 );
  pwm.setPWM(14, 0, 4096 );
  pwm.setPWM(15, 0, 0 );*/
  pwm.setPin(14, 4095,0);
  pwm.setPin(15, 0,0);
  pwm.setPin(2, 4095,0);
 
  Scanner ();
  delay (100);
}
