//set the range of xvalues 
int xmin  = -10; 
int xmax  = 10; 
int x;

//range  of  yvalues 
int ymin  = -10; 
int ymax  = 10;

//calculate  the  range 
int rangex  =  xmax - xmin; 
int rangey  =  ymax - ymin;

//scale factors 
int xscl;
int yscl;

void  setup()
{
  size(600, 600);
  //fullScreen();

  xscl = width/rangex;
  yscl = -height/rangey;
}

void draw()
{
  background(255); //white  

  grid(xscl, yscl);
  //graphFunction();

  fill(0);
  ellipse(3*xscl, 6*yscl, 10, 10);
  
  //println(a);
}

float f(float x) 
{
   return pow(x, 2);
}
 
void graphFunction()
{
  x = xmin;
      
  while (x <= xmax) 
  {
    fill(0);
    line(x*xscl, f(x)*yscl, (x+0.1)*xscl, f(x+0.1)*yscl);
    x += 0.1;
  }
}
