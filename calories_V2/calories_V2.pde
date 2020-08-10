
PImage cal1;
PImage cal2;
PImage cal3;


void setup() {
  fullScreen();
  //size(1920, 1080);
  background(100);

  cal1 = loadImage("cal1.jpg");
  cal2 = loadImage("cal2.jpg");
  cal3 = loadImage("cal3.jpg");
  textSize(32);
  smooth(2);
  noCursor();
}

void draw() {


println(mouseY);

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
