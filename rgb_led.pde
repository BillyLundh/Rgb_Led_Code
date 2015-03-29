
/* RGB script. 
Cnnect the short leg of the 4 pin rgb led
to ground and 220 Ohm resistors for the pins */

/* colors
setColor(255, 0, 0); // red
setColor(0, 255, 0); // green
setColor(0, 0, 255); // blue
setColor(255, 255, 0); // yellow
setColor(80, 0, 80); // purple
setColor(0, 255, 255); // aqua
*/


int redPin = 11;
int greenPin = 10;
int bluePin = 9;

void setup() {
  Serial.begin(9600);
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
}

void cmd() {
  Serial.println("---------------");
  Serial.println("--RGB--SCRIPT--");
  Serial.println("---------------");
  Serial.println("");
  Serial.println("   Pick a color");
  Serial.println("");
  Serial.println("    1.Red");
  Serial.println("    2.Green");
  Serial.println("    3.Blue");
  Serial.println("    4.Yellow");
  Serial.println("    5.Purple");
  Serial.println("    6.Aqua");
  Serial.println("    7.Animation");
  Serial.println("");
  Serial.println("---------------");


}

void setColor(int red, int green, int blue)
{
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);
}

void loop() {

  if (Serial.available()) {
    cmd();
    char ser = Serial.read();

    if (ser == '1') {
      Serial.println("Red");
      setColor(255, 0, 0);
      delay(1000);
    }
    if (ser == '2') {
      Serial.println("Green");
      setColor(0, 255, 0);
      delay(1000);
    }
    if (ser == '3') {
      Serial.println("Blue");
      setColor(0, 0, 255);
      delay(1000);
    }
    if (ser == '4') {
      Serial.println("Yellow");
      setColor(255, 255, 0);
      delay(1000);
    }
    if (ser == '5') {
      Serial.println("Purple");
      setColor(80, 0, 80);
      delay(1000);
    }
    if (ser == '6') {
      Serial.println("Aqua");
      setColor(0, 255, 255);
      delay(1000);
    }
    if (ser == '7') {
      Serial.println("Animation");
      setColor(255, 0, 0); // red
      delay(800);
      setColor(0, 255, 0); // green
      delay(800);
      setColor(0, 0, 255); // blue
      delay(800);
      setColor(255, 255, 0); // yellow
      delay(800);
      setColor(80, 0, 80); // purple
      delay(800);
      setColor(0, 255, 255); // aqua
      delay(800);
    }
  }
}
