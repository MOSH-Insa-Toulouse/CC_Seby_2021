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

//Encodeur rotatoir
#define CLK 2      //CLK Output A
#define DATA 3     //DT Output B
#define Switch 4   //Switch connection

/**********************************
****** Variables Globales  *******
**********************************/

float tension;
double resistance;

//Variables de l'encodeur
volatile unsigned int Selector = 0;
//0 Resistance
//1 Tension

volatile unsigned int Menu = 0;
//0  mesure on 
//1  mesure off, menu

bool swState  = HIGH;
bool swLast  = LOW;

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

void Menu_OLED()
{
  if (Selector == 0)
  {
    Selector = 1;
  }
  else 
  {
    Selector = 0;
  }
}

/**********************************
****** Programme Principal ********
**********************************/

void setup()
{

 
 //Configuration des ports du bluetooth
 pinMode(rxPin,INPUT);
 pinMode(txPin,OUTPUT);

 //Configuration des ports de l'encodeur rotatoir
 pinMode(CLK,INPUT);
 digitalWrite(CLK,HIGH);
 pinMode(DATA,INPUT);
 digitalWrite(DATA,HIGH);

 //Ouverture des ports
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

  //Mesures
  tension = analogRead(analog_port);

  //Envoie des données par Bluetooth
  byte V = map(tension,0,1023,0,255);
  Bluetooth.write(V);

  tension = tension*5/1024;
  resistance = (1.0+100.0)*100000.0*(5.0/tension)-100000.0-10000.0;

  delay(250);

  //Gestion du bouton de l'encodeur rotatoir
  swState = digitalRead(Switch);
  if (swState == HIGH && swLast == LOW && Menu ==0) 
  {
    Menu=1;
    attachInterrupt(digitalPinToInterrupt(DATA), Menu_OLED, RISING);
    delay(500);//debounce 
  }
  else if (swState == HIGH && swLast == LOW && Menu ==1) 
  {
    Menu=0;
    detachInterrupt(digitalPinToInterrupt(DATA)); 
    delay(500);//debounce
  }
  swLast = swState;

  //Gestion de l'Affichage sur l'écran OLED
  switch (Menu)
  {
    case 0 :
      switch (Selector)
    {
      case 0 : 
      Affichage_Resistance(resistance/1000000.0);
      break;
  
      case 1 :
      Affichage_Tension (tension) ;
      break;
    }
    break;
    
    case 1 :
      switch (Selector)
    {
      case 0 : 
      //Configuration de l'écran
      display.clearDisplay();
      display.setTextSize(1); 
      display.setTextColor(WHITE);
  
      display.setCursor(5, 0);
      display.println(F(" -> Resistance"));
      display.setCursor(30, 17);
      display.println(F("Tension"));
      display.display();
      break;
  
      case 1 :
      //Configuration de l'écran
      display.clearDisplay();
      display.setTextSize(1); 
      display.setTextColor(WHITE);
  
      display.setCursor(30, 0);
      display.println(F("Resistance"));
      display.setCursor(5, 17);
      display.println(F(" -> Tension"));
      display.display();
      break;
    }
    break;
  } 
}
