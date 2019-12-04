//Suacode logo by John Samuel © Suacode 2019 
int halfOfScreenWidth;
int halfOfScreenHeight;

void setup() 
{
  fullScreen();
  smooth();
  orientation(LANDSCAPE);
}

void draw() 
{
  halfOfScreenWidth = width/2;
  halfOfScreenHeight= height/2;

  //function calls to use in-built Android fonts 
  PFont font1 = createFont("Monospaced-Italic", 30);
  PFont font2 = createFont("SansSerif", 100);
  PFont font3 = createFont("SansSerif", 30);
  PFont font4 = createFont("Monospaced-Italic", 18);

  //the following variables are used to get the design of 'CODE' 
  int topHorRectX = halfOfScreenWidth;
  int topHorRectY = halfOfScreenHeight;
  int horRectWidth = 20;
  int horRectHeight = 10;
  int bottomHorRectX = halfOfScreenWidth;
  int bottomHorRectY = halfOfScreenHeight+40;
  int leftVertRectX = halfOfScreenWidth;
  int leftVertRectY = halfOfScreenHeight+10;
  int leftVertRectWidth = 10;
  int leftVertRectHeight = 30;
  int midSquareX = halfOfScreenWidth+10;
  int midSquareY = halfOfScreenHeight+20;
  int midSquareWidth = 10;

  background(255);

  //the below lines of code results in the design of 'CODE'

  noStroke();
  fill(253, 1, 201);

  // letter E
  rect(topHorRectX, topHorRectY, horRectWidth, horRectHeight);
  rect(bottomHorRectX, bottomHorRectY, horRectWidth, horRectHeight);
  rect(leftVertRectX, leftVertRectY, leftVertRectWidth, leftVertRectHeight);
  rect(midSquareX, midSquareY, midSquareWidth, midSquareWidth); 

  // letter D
  rect(halfOfScreenWidth-20, halfOfScreenHeight-15, 10, 80);
  rect(halfOfScreenWidth-10, halfOfScreenHeight-15, 36, 10);
  rect(halfOfScreenWidth-10, halfOfScreenHeight+55, 36, 10);

  noFill();
  strokeWeight(9);
  strokeCap(SQUARE);
  stroke(253, 1, 201);

  arc(halfOfScreenWidth+26, halfOfScreenHeight+25, 30, 70, PI+HALF_PI, TWO_PI);
  arc(halfOfScreenWidth+26, halfOfScreenHeight+25, 30, 70, 0, HALF_PI);

  //letter O
  ellipse(halfOfScreenWidth+13, halfOfScreenHeight+25, 126, 150);

  //letter C
  ellipse(halfOfScreenWidth+13, halfOfScreenHeight+25, 166, 190);

  strokeWeight(28);
  strokeCap(SQUARE);
  stroke(255);
  line(halfOfScreenWidth+93, halfOfScreenHeight-20, halfOfScreenWidth+93, halfOfScreenHeight+75);//improvisation line that truncates the RHS of letter O to form C

  //all the ABOVE lines of code results in the design of the word 'CODE' 

  fill(0);
  textSize(40);
  textFont(font1);
  text("Coding on your mobile...", halfOfScreenWidth-260, halfOfScreenHeight+180);

  textSize(100);

  fill(255, 0, 0);//first color component of the Ghanaian flag
  textFont(font2);
  text("S", halfOfScreenWidth-260, halfOfScreenHeight+119);

  fill(240, 188, 7);//second color component of the Ghanaian flag
  text("U", halfOfScreenWidth-191, halfOfScreenHeight+119);

  fill(0, 128, 0);//third color component of the Ghanaian flag
  text("A", halfOfScreenWidth-126, halfOfScreenHeight+119);

  fill(128, 0, 0, 191);//opaque brown color representing the African continent 
  textFont(font3);
  textSize(30);
  text("A", halfOfScreenWidth+98, halfOfScreenHeight-40);
  text("F", halfOfScreenWidth+98, halfOfScreenHeight-10);
  text("R", halfOfScreenWidth+98, halfOfScreenHeight+20);
  text("I", halfOfScreenWidth+103, halfOfScreenHeight+50);
  text("C", halfOfScreenWidth+98, halfOfScreenHeight+80);
  text("A", halfOfScreenWidth+98, halfOfScreenHeight+110);

  fill(17, 21, 239);
  textFont(font4);

  //the lines of code below is meant to display the basic Processing sketch synthax 
  text("void setup() {", halfOfScreenWidth-240, halfOfScreenHeight-40);
  text("}", halfOfScreenWidth-240, halfOfScreenHeight-20);

  text("void draw() {", halfOfScreenWidth-240, halfOfScreenHeight+10);
  text("}", halfOfScreenWidth-240, halfOfScreenHeight+30);
}
