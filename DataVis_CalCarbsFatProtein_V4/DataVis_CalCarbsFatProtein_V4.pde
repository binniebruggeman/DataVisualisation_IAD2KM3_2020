
//Images calories per food
PImage cal1;
PImage cal2;
PImage cal3;

//Images carbohydrates per food
PImage carbs1;
PImage carbs2;
PImage carbs3;

//Images fat per food
PImage fat1;
PImage fat2;
PImage fat3;

//Images protein per food
PImage protein1;
PImage protein2;
PImage protein3;

void setup() {
  fullScreen();
  //size(1920, 1080);
  background(100);

  cal1 = loadImage("cal1.jpg");
  cal2 = loadImage("cal2.jpg");
  cal3 = loadImage("cal3.jpg");

  carbs1 = loadImage("carbs1.jpg");
  carbs2 = loadImage("carbs2.jpg");
  carbs3 = loadImage("carbs3.jpg");

  fat1 = loadImage("fat1.jpg");
  fat2 = loadImage("fat2.jpg");
  fat3 = loadImage("fat3.jpg");

  protein1 = loadImage("protein1.jpg");
  protein2 = loadImage("protein2.jpg");
  protein3 = loadImage("protein3.jpg");

  textSize(32);
  smooth(2);
  noCursor(); //don't show mouse cursor
}

void draw() {
  //println(mouseX);
  //println(mouseY);

  //1st part of screen is category "calories"
  if (mouseX >=0 && mouseX < width/4) {
    cal();
  }

  //2nd part of screen is category "carbohydrates"
  if (mouseX > width/4 && mouseX < width/2) {
    carbs();
  }

  //3rd part of screen is category "fat"
  if (mouseX > width/2 && mouseX < (width/4)*3) {
    fat();
  }

  //4th part of screen is category "protein"
  if (mouseX > (width/4)*3 && mouseX < width) {
    protein();
  }
}

//***************************************************************************CAL***************************************************************************
//function with the code of the calories categorie
void cal() {
  if (mouseY > 0 && mouseY <390)  image(cal3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(cal2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(cal1, 0, 0, width, height);

  line((width/2-25), mouseY, (width/2+25), mouseY);
  stroke(255);
  strokeWeight(10);  // Thicker

  text("CALORIES", width/2-30, 40); 

  for (int i=0; i < 16; i++) {
    text(str(i*100), width/2-30, 1050+(i*-63));
  }
}

//***************************************************************************CARBS***************************************************************************
//function with the code of the carbohydrates categorie
void carbs() {
  if (mouseY > 0 && mouseY <390)  image(carbs3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(carbs2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(carbs1, 0, 0, width, height);

  line((width/2-25), mouseY, (width/2+25), mouseY);
  stroke(255);
  strokeWeight(10);  // Thicker

  text("CARBOHYDRATES", width/2-30, 40);

  for (int i=0; i < 11; i++) {
    text(str(i*10), width/2-30, 1000+(i*-90));
  }
}
//***************************************************************************FAT***************************************************************************
//function with the code of the fat categorie
void fat() {
  if (mouseY > 0 && mouseY <390)  image(fat3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(fat2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(fat1, 0, 0, width, height);

  line((width/2-25), mouseY, (width/2+25), mouseY);
  stroke(255);
  strokeWeight(10);  // Thicker

  text("FAT", width/2-30, 40);

  for (int i=0; i < 11; i++) {
    text(str(i*10), width/2-30, 1000+(i*-90));
  }
}
//***************************************************************************Protein***************************************************************************
//function with the code of the protein categorie
void protein() {
  if (mouseY > 0 && mouseY <390)  image(protein3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(protein2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(protein1, 0, 0, width, height);

  line((width/2-25), mouseY, (width/2+25), mouseY);
  stroke(255);
  strokeWeight(10);  // Thicker

  text("PROTEIN", width/2-30, 40);

  for (int i=0; i < 11; i++) {
    text(str(i*10), width/2-30, 1000+(i*-90));
  }
}
