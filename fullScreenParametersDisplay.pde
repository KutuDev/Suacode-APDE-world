//Program to display your phone's FULLSCREEN width and height as maxX & maxY respectively 
int halfOfScreenWidth;
int halfOfScreenHeight;

void setup()
{
  fullScreen();
}

void draw()
{
  background(255);
  
  fill(255,0,0);
  
  halfOfScreenWidth = width/2;
  halfOfScreenHeight= height/2;
  
  textSize(35);
  textAlign(CENTER);
  
  text("maxX=",halfOfScreenWidth,halfOfScreenHeight);
  text(width,halfOfScreenWidth+90,halfOfScreenHeight);
  
  text("maxY=",halfOfScreenWidth,halfOfScreenHeight+50);
  text(height,halfOfScreenWidth+90,halfOfScreenHeight+50);
}