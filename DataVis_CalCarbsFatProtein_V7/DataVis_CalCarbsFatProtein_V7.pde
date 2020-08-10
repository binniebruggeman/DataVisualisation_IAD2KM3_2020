
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

float  textColor = color(0, 0, 0);
float categorieColor = color(0, 0, 0);

float lineX = 22;
float lineY = 90;

void setup() {
  fullScreen();
  
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
  
  stroke(textColor);
  strokeWeight(1);
  line(width/2, 0, width/2, height);
  
}

//***************************************************************************CAL***************************************************************************
//function with the code of the calories categorie
void cal() {
  if (mouseY > 0 && mouseY <390)  image(cal3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(cal2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(cal1, 0, 0, width, height);

  line(lineX, mouseY, lineY, mouseY);
  stroke(textColor);
  strokeWeight(10);  // Thicker

  fill(textColor);
  text("CALORIES", 15, 40); 

  fill(categorieColor, 100);
  text("CARBOHYDRATES", width/4, 40); 

  fill(categorieColor, 100);
  text("FAT", width/2, 40); 

  fill(categorieColor, 100);
  text("PROTEIN", (width/4)*3, 40); 

fill(textColor);
  for (int i=0; i < 16; i++) {
    text(str(i*100), 15, 1000+(i*-100));
  }
}

//***************************************************************************CARBS***************************************************************************
//function with the code of the carbohydrates categorie
void carbs() {
  if (mouseY > 0 && mouseY <390)  image(carbs3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(carbs2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(carbs1, 0, 0, width, height);

  line(lineX, mouseY, lineY, mouseY);
  stroke(textColor);
  strokeWeight(10);  // Thicker

  fill(categorieColor, 100);
  text("CALORIES", 15, 40); 

  fill(textColor);
  text("CARBOHYDRATES", width/4, 40); 

  fill(categorieColor, 100);
  text("FAT", width/2, 40); 

  fill(categorieColor, 100);
  text("PROTEIN", (width/4)*3, 40); 

fill(textColor);
  for (int i=0; i < 11; i++) {
    text(str(i*10), 15, 1000+(i*-90));
  }
}
//***************************************************************************FAT***************************************************************************
//function with the code of the fat categorie
void fat() {
  if (mouseY > 0 && mouseY <390)  image(fat3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(fat2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(fat1, 0, 0, width, height);

  line(lineX, mouseY, lineY, mouseY);
  stroke(textColor);
  strokeWeight(10);  // Thicker

  fill(categorieColor, 100);
  text("CALORIES", 15, 40); 

  fill(categorieColor, 100);
  text("CARBOHYDRATES", width/4, 40); 

  fill(textColor);
  text("FAT", width/2, 40); 

  fill(categorieColor, 100);
  text("PROTEIN", (width/4)*3, 40); 

fill(textColor);
  for (int i=0; i < 11; i++) {
    text(str(i*10), 15, 1000+(i*-90));
  }
}
//***************************************************************************Protein***************************************************************************
//function with the code of the protein categorie
void protein() {
  if (mouseY > 0 && mouseY <390)  image(protein3, 0, 0, width, height);
  if (mouseY > 390 && mouseY <680)  image(protein2, 0, 0, width, height);
  if (mouseY > 680 && mouseY <1080)  image(protein1, 0, 0, width, height);

  line(lineX, mouseY, lineY, mouseY);
  stroke(textColor);
  strokeWeight(10);  // Thicker

  fill(categorieColor, 100);
  text("CALORIES", 15, 40); 

  fill(categorieColor, 100);
  text("CARBOHYDRATES", width/4, 40); 

  fill(categorieColor, 100);
  text("FAT", width/2, 40); 

  fill(textColor);
  text("PROTEIN", (width/4)*3, 40);

fill(textColor);
  for (int i=0; i < 11; i++) {
    text(str(i*10), 15, 1000+(i*-90));
  }
}
