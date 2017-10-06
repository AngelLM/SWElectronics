#include <SevSeg.h>

int led1 = A2;
int led2 = A3;
int led3 = A4;
int led4 = A5;
int led5 = 13;


SevSeg myDisplay;

unsigned long timer;
int deciSecond = 0;

void setup()
{       
       pinMode(led1, OUTPUT);
       pinMode(led2, OUTPUT);  
       pinMode(led3, OUTPUT);  
       pinMode(led4, OUTPUT);  
       pinMode(led5, OUTPUT);  

  
       int displayType = COMMON_CATHODE; //Your display is either common cathode or common anode

       //Declare what pins are connected to the GND pins (cathodes)
       int digit1 = 10;
       int digit2 = 11;
       int digit3 = 12;
       int digit4 = A1;
       int digit5 = A0;
       
       //Declare what pins are connected to the segments (anodes)
       int segA = 3; 
       int segB = 5;
       int segC = 7;
       int segD = 8;
       int segE = 6;
       int segF = 4;
       int segG = 2;
       int segDP= 9;
   
  int numberOfDigits = 5; //Do you have a 1, 2 or 4 digit display?

  myDisplay.Begin(displayType, numberOfDigits, digit1, digit2, digit3, digit4, digit5, segA, segB, segC, segD, segE, segF, segG, segDP);
  
  myDisplay.SetBrightness(100); //Set the display to 100% brightness level

  timer = millis();

}

void loop() //Funcion principal
// Dependiendo de cada dígito, se envía a la función display
// los estados (0 y 1) a cada uno de los segmentos
{
  char tempString[5] = {'-','E','8','E','-'}; //S1
  
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, HIGH);
  digitalWrite(led5, LOW);
  
  for(int i=0;i<53;i++)
  {

  myDisplay.DisplayString(tempString, 0); //(numberToDisplay, decimal point location)
  
  delay(10);
  }
  
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, HIGH);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  
   for(int i=0;i<56;i++)                      //S2
  {
      tempString[0] = 'd'; 
      tempString[1] = 'U';
      tempString[2] = 'E';
      tempString[3] = 'P';
      tempString[4] = '`';
      
      myDisplay.DisplayString(tempString, 0);
      
      delay(10);
  }
  
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, HIGH);
  
   for(int i=0;i<53;i++)                      //S3
  {
      tempString[0] = '#'; 
      tempString[1] = 'E';
      tempString[2] = '$';
      tempString[3] = '%';
      tempString[4] = '&';
      
      myDisplay.DisplayString(tempString, 0);
      
      delay(10);
  }
  
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  
  for(int i=0;i<80;i++)                      //S4
  {
      tempString[0] = '2'; 
      tempString[1] = '1';
      tempString[2] = '0';
      tempString[3] = '5';
      tempString[4] = '5';
      
      myDisplay.DisplayString(tempString, 0);
      
      delay(10);
  }
  
  digitalWrite(led1, LOW);
  digitalWrite(led2, HIGH);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  
  for(int i=0;i<56;i++)                      //S5
  {
      tempString[0] = 'd'; 
      tempString[1] = 'U';
      tempString[2] = 'E';
      tempString[3] = 'P';
      tempString[4] = '`';
      
      myDisplay.DisplayString(tempString, 0);
      
      delay(10);
  }
  
  digitalWrite(led1, HIGH);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  
  for(int i=0;i<53;i++)                      //S6
  {
      tempString[0] = 'H'; 
      tempString[1] = '?';
      tempString[2] = '2';
      tempString[3] = '9';
      tempString[4] = '=';
      
      myDisplay.DisplayString(tempString, 0);
      
      delay(10);
  }
  
  digitalWrite(led1, LOW);
  digitalWrite(led2, LOW);
  digitalWrite(led3, LOW);
  digitalWrite(led4, LOW);
  digitalWrite(led5, LOW);
  
  for(int i=0;i<80;i++)                      //S7
  {
      tempString[0] = 'H'; 
      tempString[1] = '@';
      tempString[2] = '2';
      tempString[3] = '8';
      tempString[4] = 'K';
      
      myDisplay.DisplayString(tempString, 0);
      
      delay(10);
  }
}
