String text = "touch the screen & type"; 
boolean keyboard = false; 

void setup() 
{ 
  fullScreen(); 
  textFont(createFont("Monospaced", 25 * displayDensity)); 
  textAlign(CENTER); 
  fill(100);
} 

void draw() 
{ 
  background(200); 
  text(text, width/2, 500);
}

void keyReleased() 
{ 
  if (key == CODED) 
  {
    if (keyCode == DELETE || keyCode == BACKSPACE) // BACKSPACE not responding instantaneously
    { 
      text = text.substring(0, text.length() - 1);
    }
  } else 
  { 
    text += key;
  }
} 

void mouseReleased() 
{ 
  if (!keyboard) 
  {
    text = ""; // assigns an empty space to the String 'text'
    openKeyboard(); 
    keyboard = true;
  } else 
  { 
    closeKeyboard(); 
    keyboard = false;
  }
} 
