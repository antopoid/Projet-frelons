/*
 * Connect the SD card to the following pins:
 *
 * SD Card | ESP32
 *    D2       12
 *    D3       13
 *    CMD      15
 *    VSS      GND
 *    VDD      3.3V
 *    CLK      14
 *    VSS      GND
 *    D0       2  (add 1K pull up after flashing)
 *    D1       4
 */

// SD card
#include "FS.h"
#include "SD_MMC.h"

// I2C
#define SDA  33
#define SCL  32
#include <Wire.h>

// PCA9685
#include <Adafruit_PWMServoDriver.h>
Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();  //set default address 0x40
#define PCA_M1       0
#define PCA_M2       1
#define PCA_POWER    2
#define PCA_POWER_SD 3
#define PCA_15       8
#define PCA_16       9
#define PCA_17      10
#define PCA_18      11
#define PCA_19      12
#define PCA_20      23
#define PCA_LED_R   14
#define PCA_LED_G   15
enum pin_state {PIN_OFF=0, PIN_ON=4095};

void setup(){
    Serial.begin(115200);

    Wire.begin(SDA, SCL);
    pwm.begin();
    pwm.setPWMFreq(1600);   // Set  This is the maximum PWM frequency

    // LED
    pwm.setPin(PCA_POWER_SD,PIN_OFF);
    pwm.setPin(PCA_LED_R,PIN_OFF,true); // true to invert because leds are connected between VCC and output. 
    pwm.setPin(PCA_LED_G,PIN_ON,true);
    delay(1000);
    pwm.setPin(PCA_LED_G,PIN_OFF,true);
    pwm.setPin(PCA_LED_R,PIN_ON,true);
    delay(1000);
    pwm.setPin(PCA_LED_R,PIN_OFF,true);

    
    // SD card
    // whith R4, R18, R20, R21, R27 use : -- NOT TESTED !
//    pinMode(15, INPUT);
//    pinMode(2, INPUT);
//    pinMode(4, INPUT);
//    pinMode(12, INPUT);
//    pinMode(13, INPUT);   
    // whithout R4, R18, R20, R21, R27 use : 
    pinMode(15, INPUT_PULLUP);
    pinMode(2, INPUT_PULLUP);
    pinMode(4, INPUT_PULLUP);
    pinMode(12, INPUT_PULLUP);
    pinMode(13, INPUT_PULLUP);
    pwm.setPin(PCA_POWER_SD,PIN_ON);
    delay(100);

    if(!SD_MMC.begin()){
        Serial.println("Card Mount Failed");
        return;
    }
    uint8_t cardType = SD_MMC.cardType();

    if(cardType == CARD_NONE){
        Serial.println("No SD_MMC card attached");
        return;
    }

    Serial.print("SD_MMC Card Type: ");
    if(cardType == CARD_MMC){
        Serial.println("MMC");
    } else if(cardType == CARD_SD){
        Serial.println("SDSC");
    } else if(cardType == CARD_SDHC){
        Serial.println("SDHC");
    } else {
        Serial.println("UNKNOWN");
    }

    uint64_t cardSize = SD_MMC.cardSize() / (1024 * 1024);
    Serial.printf("SD_MMC Card Size: %lluMB\n", cardSize);

    listDir(SD_MMC, "/", 0);
    createDir(SD_MMC, "/mydir");
    listDir(SD_MMC, "/", 0);
    removeDir(SD_MMC, "/mydir");
    listDir(SD_MMC, "/", 2);
    writeFile(SD_MMC, "/hello.txt", "Hello ");
    appendFile(SD_MMC, "/hello.txt", "World!\n");
    readFile(SD_MMC, "/hello.txt");
    deleteFile(SD_MMC, "/foo.txt");
    renameFile(SD_MMC, "/hello.txt", "/foo.txt");
    readFile(SD_MMC, "/foo.txt");
    testFileIO(SD_MMC, "/test.txt");
    Serial.printf("Total space: %lluMB\n", SD_MMC.totalBytes() / (1024 * 1024));
    Serial.printf("Used space: %lluMB\n", SD_MMC.usedBytes() / (1024 * 1024));
}

void loop(){

}

/* problem with SD card & camera
 * https://github.com/espressif/esp-idf/issues/227
 * 
 *  thiddious commented on 7 Mar 2021
 *  
I have found that in Arduino Studio, when using the Camera and SD_MMC together on the ESP32 CAM board, if I do anything with pin 4 anywhere in the code, the camera will sporadically fail (error messages listed below).

I have absolutely verified this many times now that I have tracked it down, as this has plagued me for weeks.

If I have the following line anywhere in my code, even inside an if statement where it is not being called, my camera will sometimes fail when I am using SD:
pinMode(4, INPUT_PULLUP);

Below is the set of error messages I sporadically get when I include any pinMode for GPIO 4:
[E][camera.c:1113] camera_probe(): Detected camera not supported.
[E][camera.c:1379] esp_camera_init(): Camera probe failed with error 0x20004
Camera capture failed

Again, this is specific only to the case where you are using SD_MMC.h and the Camera together on an ESP32-CAM board. It may also only be limited to Arduino Studio.

It is my belief that by including pinMode anywhere in your code, either Arduino or the ESP32 configures that pin for IO, which causes issues with the SD_MMC and the camera's SCCB interface. There were other posts I found where it said that you had to enable SD_MMC by calling SD_MMC.begin() prior to initializing the camera, or there would be issues with the registration on the SCCB interface (or something like that). I now call SD_MMC.begin() right at the beginning of my setup() function and I do not use GPIO4 for anything - and of course I don't do any pinMode on GPIO4 anymore!

Hope this helps someone!


 *  
 */
