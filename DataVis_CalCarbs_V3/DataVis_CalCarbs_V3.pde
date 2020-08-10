
PImage cal1;
PImage cal2;
PImage cal3;

PImage carbs1;
PImage carbs2;
PImage carbs3;

boolean cal = false;
boolean carbs = false;

void setup() {
  fullScreen();
  //size(1920, 1080);
  background(100);

  cal1 = loadImage("cal1.jpg");
  cal2 = loadImage("cal2.jpg");
  cal3 = loadImage("cal3.jpg");

  carbs1 = loadImage("carbs1.jpg");
  carbs2 = loadImage("carbs1.jpg");
  carbs3 = loadImage("carbs1.jpg");

  textSize(32);
  smooth(2);
  noCursor();
}

void draw() {

  println(mouseX);
  println(mouseY);

  if (mouseX >=0 && mouseX < width/2) {
    cal();
  }

  if (mouseX > width/2 && mouseX < width) {
    carbs();
  }
}

//function with the code of the calories categorie
void cal() {
  if (mouseY > 0 && mouseY <390)  image(cal3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(cal2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(cal1, 0, 0, width, height);

  line((width/2-25), mouseY, (width/2+25), mouseY);
  stroke(255);
  strokeWeight(10);  // Thicker

  for (int i=0; i < 10; i++) {
    text(str(i*100), width/2-30, 1000+(i*-100));
  }
}

//function with the code of the carbohydrates categorie
void carbs() {
  if (mouseY > 0 && mouseY <390)  image(carbs3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(carbs2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(carbs1, 0, 0, width, height);

  line((width/2-25), mouseY, (width/2+25), mouseY);
  stroke(255);
  strokeWeight(10);  // Thicker

  for (int i=0; i < 5; i++) {
    text(str(i*25), width/2-30, 1000+(i*-100));
  }
}
