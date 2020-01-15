int x = 0, y = 0; 

boolean a = false;

void setup() 
{ 
  size(600, 200); 
  strokeWeight(2); 
  stroke(255);
} 
void draw()//this assigns TRUE to the variable 'looping' 
{ 

  background(50); 
  line(x, 0, x, height); 
  x = (x + 1) % width;
  
  a = true;
  
  textSize(30);
  text(y, 200, 50);
  
} 
void mousePressed() // means that if 'looping' is TRUE and then mousePressed becomes TRUE....... 
{ 
  if (looping) 
  { 
    
    y++;
    
    status("Paused");
    
    /*fill(255); 
    textSize(30);
    text("PAUSED"+ " " + y, 300, 50);*/
    
    
    //text(y, 300, 50);
    
    
    if(a) 
    {
      noLoop();
    }
    
  } else 
  { 
    loop();
  }
}

void status(String t)
{
  fill(255); 
  textSize(30);
  text(t+ " " + y, 300, 50);
}