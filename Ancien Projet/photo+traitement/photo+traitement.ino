 
 
/*********
  Rui Santos
  Complete project details at https://RandomNerdTutorials.com/esp32-cam-take-photo-save-microsd-card
  
  IMPORTANT!!! 
   - Select Board "AI Thinker ESP32-CAM"
   - GPIO 0 must be connected to GND to upload a sketch
   - After connecting GPIO 0 to GND, press the ESP32-CAM on-board RESET button to put your board in flashing mode
  
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files.
  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.
*********/

#include "esp_camera.h"
#include "Arduino.h"
#include "FS.h"                // SD Card ESP32
#include "SD_MMC.h"            // SD Card ESP32
#include "soc/soc.h"           // Disable brownour problems
#include "soc/rtc_cntl_reg.h"  // Disable brownour problems
#include "driver/rtc_io.h"
#include <EEPROM.h>            // read and write from flash memory


//tests
#define niveau_gris_mini 50  // nv de gris max accepté
#define saut_de_pixels 1 // tous les combien de pixels on vérifie
#define HEIGHT 50   // dépend du frame_size utilisé
#define WIDTH 50
#define LEN HEIGHT*WIDTH
// les initialisations de variables au niveau du traitement d'image
bool tab_pix_noir[WIDTH][HEIGHT] = {0}; // tab contenant tous les pixels // à remettre à 0 au début de la fonction dans lequel on lancera le traitement
uint16_t recurs_taches(uint16_t pos_x, uint16_t pos_y, uint16_t N);

// -----------


// define the number of bytes you want to access
#define EEPROM_SIZE 1

// Pin definition for CAMERA_MODEL_AI_THINKER
#define PWDN_GPIO_NUM     32
#define RESET_GPIO_NUM    -1
#define XCLK_GPIO_NUM      0
#define SIOD_GPIO_NUM     26
#define SIOC_GPIO_NUM     27

#define Y9_GPIO_NUM       35
#define Y8_GPIO_NUM       34
#define Y7_GPIO_NUM       39
#define Y6_GPIO_NUM       36
#define Y5_GPIO_NUM       21
#define Y4_GPIO_NUM       19
#define Y3_GPIO_NUM       18
#define Y2_GPIO_NUM        5
#define VSYNC_GPIO_NUM    25
#define HREF_GPIO_NUM     23
#define PCLK_GPIO_NUM     22

camera_fb_t * fb = NULL;

uint16_t pictureNumber = 0;

void setup() {
WRITE_PERI_REG(RTC_CNTL_BROWN_OUT_REG, 0); //disable brownout detector
 
  Serial.begin(115200);
  //Serial.setDebugOutput(true);
  //Serial.println();
  
  camera_config_t config;
  config.ledc_channel = LEDC_CHANNEL_0;
  config.ledc_timer = LEDC_TIMER_0;
  config.pin_d0 = Y2_GPIO_NUM;
  config.pin_d1 = Y3_GPIO_NUM;
  config.pin_d2 = Y4_GPIO_NUM;
  config.pin_d3 = Y5_GPIO_NUM;
  config.pin_d4 = Y6_GPIO_NUM;
  config.pin_d5 = Y7_GPIO_NUM;
  config.pin_d6 = Y8_GPIO_NUM;
  config.pin_d7 = Y9_GPIO_NUM;
  config.pin_xclk = XCLK_GPIO_NUM;
  config.pin_pclk = PCLK_GPIO_NUM;
  config.pin_vsync = VSYNC_GPIO_NUM;
  config.pin_href = HREF_GPIO_NUM;
  config.pin_sscb_sda = SIOD_GPIO_NUM;
  config.pin_sscb_scl = SIOC_GPIO_NUM;
  config.pin_pwdn = PWDN_GPIO_NUM;
  config.pin_reset = RESET_GPIO_NUM;
  config.xclk_freq_hz = 20000000;
  config.pixel_format = PIXFORMAT_GRAYSCALE; 
    
  if(psramFound()){
    config.frame_size = FRAMESIZE_QVGA; // FRAMESIZE_ + QVGA|CIF|VGA|SVGA|XGA|SXGA|UXGA
    config.jpeg_quality = 20;
    config.fb_count = 2;
  } else {
    config.frame_size = FRAMESIZE_QVGA;
    config.jpeg_quality = 20;
    config.fb_count = 1;
  }
  /*FRAMESIZE_UXGA (1600 x 1200)
    FRAMESIZE_QVGA (320 x 240)
    FRAMESIZE_CIF (352 x 288)
    FRAMESIZE_VGA (640 x 480)
    FRAMESIZE_SVGA (800 x 600)
    FRAMESIZE_XGA (1024 x 768)
    FRAMESIZE_SXGA (1280 x 1024)*/
  
  // Init Camera
  esp_err_t err = esp_camera_init(&config);
  if (err != ESP_OK) {
    Serial.printf("Camera init failed with error 0x%x", err);
    return;
  }
  
  sensor_t * s = esp_camera_sensor_get();
  //Serial.println("Starting SD Card");
  if(!SD_MMC.begin()){
    Serial.println("SD Card Mount Failed");
    return;
  }
  
  uint8_t cardType = SD_MMC.cardType();
  if(cardType == CARD_NONE){
    Serial.println("No SD Card attached");
    return;
  }
    
  // Take Picture with Camera
  fb = esp_camera_fb_get();
  
  if(!fb) {
    Serial.println("Camera capture failed");
    return;
  }


   // ------------------------------------ Traitement de l'image ------------------------------------ //
/*
  Serial.println();
  Serial.println(fb -> width);
  Serial.println(fb -> height);
  Serial.println(fb -> format);
  */
  //mettre cette init en setup
  
  uint16_t x = 0, y = 0;
  uint16_t taille_tache_max = 0;
  uint8_t plus_grosse_tache, num_tache = 0;
  uint16_t x_tache[LEN/5] = {0}, y_tache[LEN/5] = {0}, taille_tache[LEN/5] = {0};
  for(y = 0; y < HEIGHT; y += saut_de_pixels){ // on analyse tous les saut_de_pixels pixels, en x et y
    for(x = 0; x < WIDTH; x += saut_de_pixels){         
      if (fb -> buf[x + WIDTH * y] < niveau_gris_mini && tab_pix_noir[x][y] == false){ // si au-dessus du niveau de gris alors true dans le tableau à la position du px
        x_tache[num_tache] = x;
        y_tache[num_tache] = y;
        taille_tache[num_tache] = recurs_taches(x, y, 0) -1;
        if(taille_tache[num_tache] > taille_tache_max){
          taille_tache_max = taille_tache[num_tache];
          plus_grosse_tache = num_tache;
        }
        num_tache++;
      }
    }
  }
  Serial.print("plus grosse tâche : \nx : ");
  Serial.println(x_tache[plus_grosse_tache]);
  Serial.print("y : ");
  Serial.println(y_tache[plus_grosse_tache]);
  Serial.print("taille de la tache : ");
  Serial.println(taille_tache[plus_grosse_tache]);

    // ---------------------------------- Fin traitement de l'image ---------------------------------- //
    // initialize EEPROM with predefined size
  EEPROM.begin(EEPROM_SIZE);
  pictureNumber = EEPROM.read(0) + 1;

  // Path where new picture will be saved in SD Card
  String path = "/picture" + String(pictureNumber) +".jpg";

  fs::FS &fs = SD_MMC; 
  Serial.printf("Picture file name: %s\n", path.c_str());
  
  File file = fs.open(path.c_str(), FILE_WRITE);
  if(!file){
    Serial.println("Failed to open file in writing mode");
  } 
  else {
    file.write(fb->buf, fb->len); // payload (image), payload length
    Serial.printf("Saved file to path: %s\n", path.c_str());
    EEPROM.write(0, pictureNumber);
    EEPROM.commit();
  }
  file.close();
  esp_camera_fb_return(fb); 
  
  // Turns off the ESP32-CAM white on-board LED (flash) connected to GPIO 4
  pinMode(4, OUTPUT);
  digitalWrite(4, LOW);
  rtc_gpio_hold_en(GPIO_NUM_4);
  
  delay(2000);
  Serial.println("Going to sleep now");
  delay(2000);
  esp_deep_sleep_start();
  Serial.println("This will never be printed");
}

uint16_t recurs_taches(uint16_t x, uint16_t y, uint16_t N){

    N++;
    Serial.printf("[%d][%d] : %d \n",x,y,N);
    if(fb -> buf[x+1 + WIDTH * y] < niveau_gris_mini && tab_pix_noir[x+1][y] == false && x+1 < WIDTH){ // mettre width et height en arg
        tab_pix_noir[x+1][y] = 1;
        N = recurs_taches(x+1, y, N);
    }
    if(fb -> buf[x + WIDTH * (y+1)] < niveau_gris_mini && tab_pix_noir[x][y+1] == false && y+1 < HEIGHT){
        tab_pix_noir[x][y+1] = 1;
        N = recurs_taches(x, y+1, N);
    }
    if(fb -> buf[x-1 + WIDTH * y] < niveau_gris_mini && tab_pix_noir[x-1][y] == false && x-1 >= 0){
        tab_pix_noir[x-1][y] = 1;
        N = recurs_taches(x-1, y, N);
    }
    if(fb -> buf[x + WIDTH * (y-1)] < niveau_gris_mini && tab_pix_noir[x][y-1] == false && y-1 >= 0){
        tab_pix_noir[x][y-1] = 1;
        N = recurs_taches(x, y-1, N);
    }
    return N;
}

void loop() {
  
}
