/*Potentiometer
    Center pin of the potentiometer to the analog input 0.
    One side pin (either one) to ground,
    the other side pin to +5V.

  Servos
    Using 1 high powered servo, so this one uses an extra adaptor to power it, because the Arduino's +5V is not enough.
    Datapin is attached to pin 9, ground is attached to both Arduino's ground and the adaptors ground, using a terminal block,
    same goes for +5V; attached to Arduino's +5V and the adaptors power using a terminal block.
    A regular servo would be attached only to the Arduino's ground and +5V, without the use of an extra adaptor. 180° Rotation.

    RoHS servo 130116 attached to pin 10. This servo is rated for 180° rotation, but in actuality it only hits ~160°.

    A third servo is attached to pin 11, also 180˚ rotation, the one I used was malfunctioning. 

  Data
    Category 1 contains 4 different values for mood:
    1=happy, 2=sensitive, 3=sad, 4=pms (pre-menstrual syndrom; upset, aggitated, angry, sad etc.)

    Category 2 contains 3 different values for the current "state" of your body:
    5=neutral, 6=fertile/ovulating, 7=menstruating

    Category 3 contains 2 different values for your sex drive:
    8=neutral, 9=high sex drive
*/

#include <Servo.h>

Servo moodServo;  //create servo object to control the "mood-servo"
Servo bodyStateServo;  //create servo object to control the "body state-servo"
Servo sexDriveServo;  //create servo object to control the "sex drive-servo"


//Potmeter to select the day of the month with, original potmeter-values would be scaled to 1-31, 
//but for this prototype I'm scaling to a week 
int potPin = A0;    //input pin for the potentiometer
int potVal = 0;  //variable to store the value coming from the senso


/*Array of 3 category values, stored in another array that contains the days of the week, 7 in total.
  That way each day contains all matching category values*/
int day[7][3] = {
  {1, 5, 9},      //day 1 happy,     neutral,      neutral
  {2, 6, 9},      //day 2 sensitive, ovulating,    high sex drive
  {3, 6, 9},      //day 3 sad,       ovulating,    high sex drive
  {4, 5, 8},      //day 4 pms,       neutral,      neutral
  {4, 5, 9 },     //day 5 pms,       neutral,      high sex drive
  {2, 7, 8},      //day 6 sensitive, menstruating, neutral
  {1, 7, 9}       //day 7 happy,     menstruating, high sex drive
};

void setup() {
  Serial.begin(9600);         //open the serial port at 9600 bps:
  moodServo.attach(9);        //attaches the mood-servo on pin 9 to the servo object
  bodyStateServo.attach(10);  //attaches the mood-servo on pin 9 to the servo object
  sexDriveServo.attach(11);   //attaches the mood-servo on pin 9 to the servo object

}

void loop() {
  potVal = analogRead(potPin);
  potVal = map(potVal, 0, 1023, 0, 7); //scale the value of the potmeter to the days of the week
  Serial.print("day: ");
  Serial.println(potVal + 1); //day, using +1 because it starts counting with day 0 otherwise, instead of with day 1

  //******************************************************************MOOD******************************************************************
  if ((day[potVal][0]) == 1) { //happy
    moodServo.write(0);
  }

  if ((day[potVal][0]) == 2) { //sensitive
    moodServo.write(60);
  }

  if ((day[potVal][0]) == 3) { //sad
    moodServo.write(120);
  }

  if ((day[potVal][0]) == 4) { //pms
    moodServo.write(180);
  }

  Serial.print("mood: ");
  Serial.println(day[potVal][0]); //mood

  //******************************************************************BODY STATE******************************************************************
  if ((day[potVal][1]) == 5) { //neutral
    bodyStateServo.write(60);
  }

  if ((day[potVal][1]) == 6) { //ovulating
    bodyStateServo.write(120);
  }

  if ((day[potVal][1]) == 7) { //menstruating
    bodyStateServo.write(180);
  }

    Serial.print("body state: ");
    Serial.println(day[potVal][1]); //body state
  

    //******************************************************************SEX DRIVE******************************************************************
    if ((day[potVal][2]) == 8) { //neutral
      sexDriveServo.write(0);
    }

    if ((day[potVal][2]) == 9) { //high sex drive
      sexDriveServo .write(180);
    }

    Serial.print("sex drive: ");
    Serial.println(day[potVal][2]); //sex drive

    delay(100); //delays 100 milliseconds
  }
