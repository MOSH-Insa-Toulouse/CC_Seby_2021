/**********************************
********** Bibliothèques **********
**********************************/  
 
#include <SoftwareSerial.h>

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

/**********************************
****** Programme Principal ********
**********************************/

void setup()
{
  
 Bluetooth.begin(baudrate);
 Serial.begin(baudrate);

}

void loop() 
{

  Serial.println(analogRead(analog_port)*5.0/1024.0);
  delay(50);

}
