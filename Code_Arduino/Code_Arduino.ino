/**********************************
********** Bibliothèques **********
**********************************/  
 
#include <SoftwareSerial.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

/**********************************
****** Définition des Ports *******
**********************************/

#define baudrate 9600

//Module Bluetooth
#define rxPin 11
#define txPin 10
SoftwareSerial Bluetooth(rxPin,txPin);

//Capteur
#define analog_port 0

//Écran 
//Arduino UNO : A4(SDA), A5(SCL)
#define SCREEN_ADDRESS 0x3C
Adafruit_SSD1306 display(-1);  //-1 car pas de pin reset

/**********************************
****** Variables Globales  *******
**********************************/

double tension;
double resistance;

/**********************************
*********** Fonctions *************
**********************************/

void Affichage_Tension (double u) 
{
  //Configuration de l'écran
  display.clearDisplay();
  display.setTextSize(2); 
  display.setTextColor(WHITE);

  //Affichage de la tension
  Serial.println(u);
  display.setCursor(30, 0);
  display.println(F("Tension"));
  display.setCursor(40, 17);
  display.println(u);
  display.setCursor(90, 17);
  display.println(F("V"));
  display.display();
}

void Affichage_Resistance (double r) 
{
  //Configuration de l'écran
  display.clearDisplay();
  display.setTextSize(2); 
  display.setTextColor(WHITE);

  //Affichage de la résistance
    Serial.println(r);
  display.setCursor(5, 0);
  display.println(F("Resistance"));
  display.setCursor(0, 17);
  display.println(r,1);
  display.setCursor(65, 17);
  display.println(F("MOhms"));
  display.display();
}

/**********************************
****** Programme Principal ********
**********************************/

void setup()
{

 //Ouverture des ports
 pinMode(rxPin,INPUT);
 pinMode(txPin,OUTPUT);
 Bluetooth.begin(baudrate);
 Serial.begin(baudrate);
 display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);

 //Écran de démarrage
 display.clearDisplay();
 display.setTextSize(2); 
 display.setTextColor(WHITE);
 display.setCursor(5, 10);
 display.println(F("CC et Seby"));
 display.display();
 delay(2000);

}



void loop() 
{

  tension = analogRead(analog_port)*5.0/1024.0;
  resistance = (1+100)*100000*(5/tension)-100000-10000;
  
  
  //Affichage_Tension (tension) ;
  Affichage_Resistance(resistance/1000000);
  
  Bluetooth.print(tension);
  Bluetooth.print(",");

  delay(50);
  
}
