void grid(int xscl, int yscl)
{
  translate(width/2, height/2);
  
  strokeWeight(1);
  stroke(0, 255, 255);
  
  for(int i = xmin; i <= xmax; i++)  //VERTICAL grid lines
  {
    line(i*xscl, ymin*yscl, i*xscl, ymax*yscl);
  }
  
  for (int i = ymin; i <= ymax; i++) //HORIZONTAL grid lines
  {
    line(xmin*xscl, i*yscl, xmax*xscl, i*yscl);
  }

  //black axes
  stroke(0);    
  line(0, ymin*yscl, 0, ymax*yscl);   
  line(xmin*xscl, 0, xmax*xscl, 0);
}