/* parabola 
 b = a^2 - 2a - 8; a = -2 or 4
 parabola fits within display window*/
 
float a = 0, b = 0;
int loopLimit;
int xShift;
float ratio;
float x, y;//graphsheet variables

void setup () 
{
  fullScreen(); 
  background(255, 255, 0);
  orientation(PORTRAIT);
  strokeWeight(3);
  smooth();
} 

void draw () 
{
  graphSheet();
  
  loopLimit = width/2; //shifts curve to the right 
  xShift = width/2; 
  ratio = height/(1 * pow(loopLimit-1, 2)-2*(loopLimit-1) - 8);//the quadratic equation appears here FIRSTLY. loopLimit-1 represents the unknown variable 

  for (int i=-xShift; i<loopLimit; i++)
  { 
    a = i; 
    b = 1 * pow(a, 2)-2*a - 8; //the quadratic equation appears here SECONDLY
    point(a+xShift, b*ratio);
  }
  
} 
