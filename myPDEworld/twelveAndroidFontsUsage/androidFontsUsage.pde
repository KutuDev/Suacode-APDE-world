//LIST OF ANDROID FONTS as returned by print(PFont.list());
//Monospaced
//Monospaced-Bold 
//Monospaced-Italic 
//Monospaced-BoldItalic 
//Serif
//Serif-Bold
//Serif-Italic
//Serif-BoldItalic 
//SansSerif (this is the default font) 
//SansSerif-Bold 
//SansSerif-Italic 
//SansSerif-BoldItalic 

void setup()
{ 
  size(1000, 1000);
  print(displayDensity);
}

void draw() 
{
  background(255);

  //load text from data directory 
  PFont font = createFont("Monospaced-Italic", 20);
  
  fill(255, 0, 0);

  textFont(font);
  textSize(50);
  text("Coding on the mobile", 200, 200);
}
