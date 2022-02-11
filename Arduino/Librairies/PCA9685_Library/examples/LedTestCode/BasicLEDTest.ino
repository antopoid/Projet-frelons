
#include <Wire.h>
#include <PCA9685.h>

PCA9685 ledDriver; 

void setup()
{
  Serial.begin(9600); // Set Serial Communication
  Serial.print("14CORE | PCA9685 Test Code ");
  delay(4000);
  Serial.print("Reading Value from PCA9685");
  Delay(4000);
  Wire.begin(); // Set Arduino Wire Started
  ledDriver.begin(B111000);  // Set the pin address A0 to A5 to B111000 
  ledDriver.init();

}

void loop()
{
/* the setLEDDimmed un able to use in a loop to give you a pleasant 
Pulse up of the LED. Because each time you set a level for a LED
it will calculate random timing intervals for the PWM function at the chip
This is implemented in order to distribute a current consumptions of the full time period.
  */

  
  for(int level=5;level>=0;level--)  {
    for(int i=0; i<16; i++)  {
      ledDriver.setLEDDimmed(i,level*20);
      delay(100);     
    }
  }
  for(int level=0;level<=5;level++)  {
    for(int i=0; i<16; i++)  {
      ledDriver.setLEDDimmed(i,level*20);
      delay(100);     
    }
  }
} 


