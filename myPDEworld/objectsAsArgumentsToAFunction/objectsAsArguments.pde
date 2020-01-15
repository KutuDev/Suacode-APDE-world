Particle p1;
Particle p2;
Particle p3;
Particle p4;

void setup ()
{
  size(600,400);
  p1=new Particle(100,100,50);
  p2=new Particle(300,200,50);
  p3=new Particle(550,350,50);
  p4=new Particle(250,150,25);
}

void draw ()
{
  background(0);
  
  if(p2.overlaps(p1) || p2.overlaps(p3)) 
  {
    background(0,255,0);
  }
  
  if(p4.overlaps(p1)) 
  {
    background(255, 0, 0);
  }
 
  p2.x=mouseX;
  p2.y=mouseY;
  
  p1.display();
  p2.display();
  p3.display();
  p4.display();
  
  p4.move();
}