class Particle
{
  float x, y;
  float r;
 
  Particle(float tempX, float tempY, float tempR) 
  {
    x=tempX;
    y=tempY;
    r=tempR;
  }
  
  boolean overlaps(Particle other) 
  {
    float d1 = dist(other.x, other.y, p2.x, p2.y);
    float d2 = dist(other.x, other.y, p4.x, p4.y);
  
    if((d1<p2.r+other.r) || (d2<p4.r+other.r)) 
    {
      return true;
    }else
    {
      return false;
    }
  }
  
  void display() 
  {
    stroke(255);
    strokeWeight(4); 
    noFill();
    ellipse(x,y,r*2,r*2);
  }
  
  void move() 
  {
    p4.x = p4.x-1;
  }
}