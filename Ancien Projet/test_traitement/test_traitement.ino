 
 
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
#define HEIGHT 320    // dépend du frame_size utilisé
#define WIDTH 240/8
#define LEN HEIGHT*WIDTH
// les initialisations de variables au niveau du traitement d'image
bool tab_pix_noir[WIDTH][HEIGHT] = {0}; // tab contenant tous les pixels // à remettre à 0 au début de la fonction dans lequel on lancera le traitement
uint16_t recurs_taches(uint16_t, uint16_t, uint16_t);
  unsigned long time1=0,time2=0;
// init image de test
uint8_t img_test[LEN] = {0};

uint16_t x = 0, y = 0;
uint16_t taille_tache_max = 0;
uint8_t plus_grosse_tache, num_tache = 0;
uint16_t x_tache[LEN/5] = {0}, y_tache[LEN/5] = {0}, taille_tache[LEN/5] = {0};
// -----------


void setup() {
  
  Serial.begin(115200);
  //Serial.setDebugOutput(true);
  //Serial.println();
  


  for (int i = 0; i < 2500; i++){
   img_test[i] = 255;
  }
  
  for (int i = 0; i < 2500; i++){
   if(i%50 > 29 && i%50 < 40 && i/50 > 34 && i/50 < 45){
      img_test[i] = 0;
    }
  }

  for (int i = 0; i < 2500; i++){
   if(i%50 > 9 && i%50 < 15 && i/50 > 14 && i/50 < 20){
      img_test[i] = 0;
    }
  }
  
  for (int i = 0; i < 2500; i++){
   Serial.printf("%d\t",img_test[i]);
  if(i > 0 && i % 50 == 0){
     Serial.printf("\n"); 
   }
  }
  
  Serial.println("");

   // ------------------------------------ Traitement de l'image ------------------------------------ //
/*
  Serial.println();
  Serial.println(fb -> width);
  Serial.println(fb -> height);
  Serial.println(fb -> format);
  */
  //mettre cette init en setup
  
  time1=micros();

  for(y = 0; y < HEIGHT; y += saut_de_pixels){ // on analyse tous les saut_de_pixels pixels, en x et y
    for(x = 0; x < WIDTH; x += saut_de_pixels){         
      if (img_test[x + WIDTH * y] < niveau_gris_mini && tab_pix_noir[x][y] == false){ // si au-dessus du niveau de gris alors true dans le tableau à la position du px
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
   time2=micros();
   Serial.println(time2-time1);
    
  Serial.print("plus grosse tâche : \nx : ");
  Serial.println(x_tache[plus_grosse_tache]);
  Serial.print("y : ");
  Serial.println(y_tache[plus_grosse_tache]);
  Serial.print("taille de la tache : ");
  Serial.println(taille_tache[plus_grosse_tache]);

    // ---------------------------------- Fin traitement de l'image ---------------------------------- //
    
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

uint16_t recurs_taches(uint16_t pos_x, uint16_t pos_y, uint16_t N){

    N++;
    //Serial.printf("[%d][%d] : %d \n",x-30,y-35,N);
    if(img_test[pos_x+1 + WIDTH * pos_y] < niveau_gris_mini && tab_pix_noir[pos_x+1][pos_y] == false && pos_x+1 < WIDTH){ // mettre width et height en arg
        tab_pix_noir[pos_x+1][pos_y] = 1;
        N = recurs_taches(pos_x+1, pos_y, N);
    }
    if(img_test[pos_x + WIDTH * (pos_y+1)] < niveau_gris_mini && tab_pix_noir[pos_x][pos_y+1] == false && pos_y+1 < HEIGHT){
        tab_pix_noir[pos_x][pos_y+1] = 1;
        N = recurs_taches(pos_x, pos_y+1, N);
    }
    if(img_test[pos_x-1 + WIDTH * pos_y] < niveau_gris_mini && tab_pix_noir[pos_x-1][pos_y] == false && pos_x-1 >= 0){
        tab_pix_noir[pos_x-1][pos_y] = 1;
        N = recurs_taches(pos_x-1, pos_y, N);
    }
    if(img_test[pos_x + WIDTH * (pos_y-1)] < niveau_gris_mini && tab_pix_noir[pos_x][pos_y-1] == false && pos_y-1 >= 0){
        tab_pix_noir[pos_x][pos_y-1] = 1;
        N = recurs_taches(pos_x, pos_y-1, N);
    }
    return N;
}


void loop() {
  
}
