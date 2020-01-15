//Bézier sketch 

/*I used Java's Point class, a convenient data type for holding x,y coords, with public access to x and y properties (pt.x or pt.y)*/
Point pt1 = new Point(150, 300); 
Point pt2 = new Point(100, 100); 
Point pt3 = new Point(300, 100); 
Point pt4 = new Point(250, 300); 

float dLeft;
float dRight;

//plot curve 
void setup() 
{
  size(400, 400); 
  background(255); 
  smooth();
  
  dLeft = dist(pt1.x, pt1.y, pt2.x, pt2.y);//distance between left anchor & control point
  dRight = dist(pt4.x, pt4.y, pt3.x, pt3.y);//distance between right anchor & control point
  
  println(dLeft);
  println(dRight);
}

void draw() 
{
  stroke(0);
  
//the first & last two arguments in bezier() are the x & y coordinates of two ANCHOR POINTS
//the third-to-sixth arguments in bezier() are the x & y coordinates of two CONTROL POINTS
//w.r.t the comment below, aP represents anchor point & cP represents control point

//bezier arguments:aP1x, aP1y, cP1x, cP1y, cP2x, cP2y, aP2x, aP2y
  bezier(pt1.x, pt1.y, pt2.x, pt2.y, pt3.x, pt3.y, pt4.x, pt4.y); 
  
  //draw lines that joins control points to anchor points 
  stroke(150); 
  
  //the below lines are the tangents to the curve at both anchor points 
  line(pt1.x, pt1.y, pt2.x, pt2.y); 
  line(pt3.x, pt3.y, pt4.x, pt4.y); 
  
  //control points 
  ellipse(pt2.x, pt2.y, 10, 10);
  ellipse(pt3.x, pt3.y, 10, 10); 
  
  //anchor points 
  rectMode(CENTER); 
  rect(pt1.x, pt1.y, 10, 10); 
  rect(pt4.x, pt4.y, 10, 10);
  
} 
