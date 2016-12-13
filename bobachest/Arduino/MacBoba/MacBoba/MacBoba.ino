  byte s1[2][7]={{0,1,1,0,1,1,0}, {0,0,1,0,0,1,1}};
  byte s2[2][7]={{1,0,1,1,1,1,0}, {0,0,1,1,0,0,1}};
  byte s3[2][7]={{0,1,1,0,0,1,1}, {1,0,1,1,0,0,0}};
  byte s4[2][7]={{1,1,1,1,1,1,0}, {1,1,0,0,1,1,0}};
  byte s5[2][7]={{1,1,1,1,0,1,1}, {1,0,0,1,0,0,1}};
  int varsegm=0;
  int varleds=0;

void setup()
{
  Serial.begin(9600);
 
  pinMode(2, OUTPUT);  // Asignación de las salidas digitales
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(A0, OUTPUT);
  pinMode(A1, OUTPUT);
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(A4, OUTPUT);
  
}

void loop() //Funcion principal
// Dependiendo de cada dígito, se envía a la función display
// los estados (0 y 1) a cada uno de los segmentos
{
  segmentos();
  leds();
}

void display (byte array[])
// Funcion del display
{
  digitalWrite (2,array[0]); //A   //Se reciben 7 variables y se asignan
  digitalWrite (3,array[1]); //B  //a cada una de las salidas
  digitalWrite (4,array[2]); //C
  digitalWrite (8,array[3]); //D
  digitalWrite (7,array[4]); //E
  digitalWrite (6,array[5]); //F
  digitalWrite (5,array[6]); //G
}

void segmentos(){
  varsegm++;
  if (varsegm<50){
    digitalWrite (9,1);  digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (13,0);
    display(s1[0]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,1);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (13,0);
    display(s2[0]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,0);  digitalWrite (11,1);  digitalWrite (12,0);  digitalWrite (13,0);
    display(s3[0]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,1);  digitalWrite (13,0);
    display(s4[0]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (13,1);
    display(s5[0]);
    delay(2);
  }
  
  if (varsegm>=50){
    digitalWrite (9,1);  digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (13,0);
    display(s1[1]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,1);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (13,0);
    display(s2[1]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,0);  digitalWrite (11,1);  digitalWrite (12,0);  digitalWrite (13,0);
    display(s3[1]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,1);  digitalWrite (13,0);
    display(s4[1]);
    delay(2);
    digitalWrite (9,0);  digitalWrite (10,0);  digitalWrite (11,0);  digitalWrite (12,0);  digitalWrite (13,1);
    display(s5[1]);
    delay(2);
  }
  if (varsegm==100){
    if (varleds<5)
      varleds++;
    if (varleds==5)
      varleds=0;
    varsegm=0;
  }
}

void leds(){
  if (varleds==0){
  digitalWrite (A0,LOW); digitalWrite (A1,HIGH); digitalWrite (A2,LOW); digitalWrite (A3,LOW); digitalWrite (A4,LOW);}
  if (varleds==1){
  digitalWrite (A0,HIGH); digitalWrite (A1,LOW); digitalWrite (A2,LOW); digitalWrite (A3,LOW); digitalWrite (A4,LOW);}
  if (varleds==2){
  digitalWrite (A0,LOW); digitalWrite (A1,LOW); digitalWrite (A2,LOW); digitalWrite (A3,HIGH); digitalWrite (A4,LOW);}
  if (varleds==3){
  digitalWrite (A0,LOW); digitalWrite (A1,LOW); digitalWrite (A2,HIGH); digitalWrite (A3,LOW); digitalWrite (A4,LOW);}
  if (varleds==4){
  digitalWrite (A0,LOW); digitalWrite (A1,LOW); digitalWrite (A2,LOW); digitalWrite (A3,LOW); digitalWrite (A4,HIGH);}
}
