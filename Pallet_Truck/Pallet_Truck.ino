#include <ESP8266WiFi.h>
#include <SPI.h>
#include <MFRC522.h>
#include <PubSubClient.h>
#include <time.h>

#define RFID_SS 10 //SD2
#define RFID_RST 9 //SD1
#define MINIMUM_TIME_BETWEEN_CARDS 2000

const int ENA = 15;  //ENA connected to D8
const int ENB = 0;  //ENB connected to D3
const int MOTOR_A1 = 16; // MOTOR_A1 connected to D0
const int MOTOR_A2 = 5; // MOTOR_A2 connected to D1
const int MOTOR_B1 = 4; // MOTOR_B1 connected to digital D2
const int MOTOR_B2 = 2; // MOTOR_B2 connected to digital D4
const int RIGHT = 3; // RIGHT sensor connected to RX
const int LEFT = 1;  // LEFT sensor connected to TX
const char* WIFI_SSID = "SVEN";
const char* WIFI_PASSWORD = "Goodenough";
const char* mqttServer = "broker.mqttdashboard.com";
const int mqttPort = 1883;
const char* pubTopic = "apiyo/arduino";

long currentTime;
long lastCardRead;
String lastCardID;
String mqttMsg;
String cardID;

MFRC522 mfrc522(RFID_SS, RFID_RST); //SDA, RST
WiFiClient espClient; 
PubSubClient mqttClient(espClient);

void setup()
{
  Serial.begin(115200);

  pinMode(ENA, OUTPUT); // initialize ENA pin as an output
  pinMode(ENB, OUTPUT); // initialize ENB pin as an output
  pinMode(MOTOR_A1, OUTPUT); // initialize MOTOR_A1 pin as an output
  pinMode(MOTOR_A2, OUTPUT); // initialize MOTOR_A2 pin as an output
  pinMode(MOTOR_B1, OUTPUT); // initialize MOTOR_B1 pin as an output
  pinMode(MOTOR_B2, OUTPUT); // initialize MOTOR_B2 pin as an output
  pinMode(RIGHT, INPUT); // initialize RIGHT pin as an input
  pinMode(LEFT, INPUT);  // initialize LEFT pin as an input

  analogWriteRange(255); // change PWM range: 255 is 100%

  SPI.begin();
  mfrc522.PCD_Init(); //Initialize RFID
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);

  while ( WiFi.status() != WL_CONNECTED )
  {
    Serial.print("WI-FI Connecting to ...");
    Serial.println(WIFI_SSID);
    delay(500);
  }
  Serial.print("IP Address: ");
  Serial.println(WiFi.localIP());

  mqttClient.setServer(mqttServer, mqttPort);
  mqttClient.setCallback(mqttCallback);

  while (!mqttClient.connected())
  {
    Serial.println("Connecting to MQTT...");
    if (mqttClient.connect("ESP8266Client"))
    {
      Serial.println("mqtt connected");
    }
    else
    {
      Serial.print("mqtt failed with state ");
      Serial.println(mqttClient.state());
      delay(2000);
    }
  }
  mqttClient.subscribe(pubTopic);
}

void loop()
{
  mqttClient.loop();

  if (digitalRead(RIGHT) && digitalRead(LEFT)) goForward();
  if (digitalRead(RIGHT) && !(digitalRead(LEFT))) goLeft();
  if (!(digitalRead(RIGHT)) && digitalRead(LEFT)) goRight();
  if (!(digitalRead(RIGHT)) && !(digitalRead(LEFT))) halt();

  //READING RFID TAGS
  //if last card was detected more than MINIMUM_TIME_BETWEEN_CARDS we can check if there is another one
  currentTime = millis();
  if ((currentTime - lastCardRead) >= MINIMUM_TIME_BETWEEN_CARDS)
  {
    // check if a card is present and can be read
    if (mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial())
    {
      cardID = ""; // clear the cardID variable
      
      //processing card value to make it readable
      for (byte i = 0; i < mfrc522.uid.size; i++)
      {
        Serial.print(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " ");
        Serial.print(mfrc522.uid.uidByte[i], HEX);
        cardID.concat(String(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " "));
        cardID.concat(String(mfrc522.uid.uidByte[i], HEX));
      }
      cardID.toUpperCase();
      cardID = cardID.substring(1);

      lastCardRead = currentTime;

      /*** Why did you include (digitalRead(RIGHT) || digitalRead(LEFT))? ***/
      if (mqttMsg == cardID && sizeof(mqttMsg))
      {
        halt();
        lastCardID = cardID;
        Serial.println("Truck has reached Destination");
        const char* payload = lastCardID.c_str();
        mqttClient.publish("apiyo/web", payload); //send lastCardID to webserver
        mqttMsg = ""; //reset mqtt message once the bot stops
      }
      else if (mqttMsg != cardID && sizeof(mqttMsg))
      {
        lastCardID = cardID;
        Serial.println("lastCardID: ");
        Serial.print(lastCardID);

        const char* payload = lastCardID.c_str();
        mqttClient.publish("apiyo/web", payload); //send lastCardID to webserver
      }
      delay(500);
    }
  }
}

void mqttCallback(char* topic, byte* payload, unsigned int length)
{
  Serial.print("Message arrived in topic: ");
  Serial.println(topic);
  Serial.print("Message: ");
  //mqttMsg = 0;
  for (int i = 0; i < length; i++)
  {
    mqttMsg += (char)payload[i];
  }
  Serial.print(mqttMsg);
  Serial.println();
  Serial.println("-----------------------");
}

void goForward()
{
  Serial.println("Following Line");
  analogWrite(ENA, 100);
  digitalWrite(MOTOR_A1, HIGH);
  digitalWrite(MOTOR_A2, LOW);
  analogWrite(ENB, 100);
  digitalWrite(MOTOR_B1, HIGH);
  digitalWrite(MOTOR_B2, LOW);
}

void goRight()
{
  Serial.println("Following Line align");
  analogWrite(ENA, 100);
  digitalWrite(MOTOR_A1, HIGH);
  digitalWrite(MOTOR_A2, LOW);
  analogWrite(ENB, 0);
  digitalWrite(MOTOR_B1, LOW);
  digitalWrite(MOTOR_B2, LOW);
}

void goLeft()
{
  Serial.println("Following Line align");
  digitalWrite(ENA, 0);
  digitalWrite(MOTOR_A1, LOW);
  digitalWrite(MOTOR_A2, LOW);
  analogWrite(ENB, 100);
  digitalWrite(MOTOR_B1, HIGH);
  digitalWrite(MOTOR_B2, LOW);
}

void halt()
{
  analogWrite(ENA, 0);
  digitalWrite(MOTOR_A1, LOW);
  digitalWrite(MOTOR_A2, LOW);
  analogWrite(ENB, 0);
  digitalWrite(MOTOR_B1, LOW);
  digitalWrite(MOTOR_B2, LOW);
}
