#include "BluetoothSerial.h"
BluetoothSerial SerialBT;

const int LEFT_CW    = 5;
const int LEFT_CCW   = 18;
const int RIGHT_CW   = 19;
const int RIGHT_CCW  = 21;
const int STATUS_LED = 2;

const bool ACTIVE_HIGH = true;

bool controlEnabled = false;

int ON  = ACTIVE_HIGH ? HIGH : LOW;
int OFF = ACTIVE_HIGH ? LOW  : HIGH;

void allStop() {
  digitalWrite(LEFT_CW, OFF);
  digitalWrite(LEFT_CCW, OFF);
  digitalWrite(RIGHT_CW, OFF);
  digitalWrite(RIGHT_CCW, OFF);
}

void forward() {
 digitalWrite(LEFT_CW, ON);
  digitalWrite(LEFT_CCW, OFF);
  digitalWrite(RIGHT_CW, ON);
  digitalWrite(RIGHT_CCW, OFF);
  delay(50);
  allStop();
}

void backward() {
  digitalWrite(LEFT_CW, OFF);
  digitalWrite(LEFT_CCW, ON);
  digitalWrite(RIGHT_CW, OFF);
  digitalWrite(RIGHT_CCW, ON);
  delay(50);
  allStop();
}

void pivotRight() {
  digitalWrite(LEFT_CW, OFF);
  digitalWrite(LEFT_CCW, ON);
  digitalWrite(RIGHT_CW, ON);
  digitalWrite(RIGHT_CCW, OFF);
  delay(50);
  allStop();
}

void pivotLeft() {
  digitalWrite(LEFT_CW, ON);
  digitalWrite(LEFT_CCW, OFF);
  digitalWrite(RIGHT_CW, OFF);
  digitalWrite(RIGHT_CCW, ON);
  delay(50);
  allStop();
}

void setup() {
  Serial.begin(9600);
  pinMode(LEFT_CW, OUTPUT);
  pinMode(LEFT_CCW, OUTPUT);
  pinMode(RIGHT_CW, OUTPUT);
  pinMode(RIGHT_CCW, OUTPUT);
  pinMode(STATUS_LED, OUTPUT);
  allStop();
  digitalWrite(STATUS_LED, OFF);
  SerialBT.begin("especial");
}

void loop() {
  if (Serial.available()) SerialBT.write(Serial.read());

  if (SerialBT.available()) {
    char c = SerialBT.read();

    if (c == '1') {
      controlEnabled = true;
      digitalWrite(STATUS_LED, ON);
    } else if (c == '0') {
      controlEnabled = false;
      digitalWrite(STATUS_LED, OFF);
      allStop();
    } else if (controlEnabled) {
      switch (toupper(c)) {
        case 'F': forward();    break;
        case 'B': backward();   break;
        case 'L': pivotLeft();  break;
        case 'R': pivotRight(); break;
        case 'S': allStop();    break;
      }
    }
  }

  delay(5);
}