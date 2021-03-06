float r=400.0;//The radius of a circle 
float w;//The width of the boxes 
float arclength, theta;
char currentChar;
char curvedText[] = {'A','F','R','I','C','A'};

void setup() 
{
  fullScreen();
  smooth();
  textSize(150);
} 

void draw() 
{
  background(255);
 
  //Start in the center and draw the circle     
  translate(width/2, height/2); 
  noFill();
  stroke(0);   

  //Our curve is a circle with radius r in the center of the window.   
  ellipse(0, 0, r*2, r*2);

  //We must keep track of our position along the curve   
  arclength = 0.0;

  //For every box   
  for (int i=0; i<curvedText.length; i++) 
  {
    currentChar=curvedText[i];
    w=textWidth(currentChar);
    
    //Each box is centered so we move half the width         
    arclength += w/2;

    //Angle in radians is the arclength divided by the radius         
    theta = (PI-(PI/4))-(arclength/r);// this determines starting point of curved text
    
    pushMatrix();

    //Polar to cartesian coordinate conversion 
    translate(r*cos(theta), r*sin(theta)); 

    //Rotate the box        
    rotate(theta-(PI/2));//rotate is offset by 90 degrees

    //Display the box         
    fill(255,0,255);    
    
    textAlign(CENTER);
    text(currentChar,0,0); 

    popMatrix();

    //Move halfway again        
    arclength += w/2;
  }
} 
