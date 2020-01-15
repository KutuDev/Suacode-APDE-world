void graphSheet()
{
  strokeWeight(1);
  stroke(200);
  x = 0;
  while (x < width)
  {
    line(x, 0, x, height);
    x += 5;
  }

  y = 0;
  while (y < height)
  {
    line(0, y, width, y);
    y += 5;
  }

  pushMatrix();

  translate(width/2, height/2);
  
  stroke(0);
  strokeWeight(2);
  /*arrow(width-10, 0, width, 0);
  arrow(0, height-10, 0, height);*/

  fill(0);
  textSize(25);
  text("O", -20, 25); 
  
  textSize(25);
  
  line(0,0,width,0);//+x axis horizontal line 
  line(0,0,-width,0);//-x axis horizontal line
  
  line(0,0,0,height);//+y axis vertical line
  line(0,0,0,-height);//-y axis vertical line
  
  for (int i = 50; i < width-10; i+=50)
  {
    line(i, 0, i, 10);//+x axis horizontal line markings
    if (i > width - 50)
      break;
    if (i % 100 == 0)
    {
      //text(-i, -i+15, 30);//-x axis horizontal line numbers 
    }
  }
  
  for (int i = 50; i < width-10; i+=50)
  {
    line(-i, 0, -i, 10);//-x axis horizontal line markings
    if (i > width - 50)
      break;
    if (i % 100 == 0)
    {
      text(i, i-15, 30);//+x axis horizontal line numbers 
    }
  }

  for (int i = 50; i < height-10; i+=50)
  {
    line(0, -i, 10, -i);//+y axis vertical line markings
    if (i > height - 50)
      break;
    if (i % 100 == 0)
    {
      text(-i, 20, i+7);//-y axis vertical line numbers
    }
  }
  
  for (int i = 50; i < height-10; i+=50)
  {
    line(0, i, 10, i);//-y axis vertical line markings
    if (i > height - 50)
      break;
    if (i % 100 == 0)
    {
      text(i, 20, -i+7);//+y axis vertical line numbers
    }
  }

  popMatrix();
}

void arrow(int x1, int y1, int x2, int y2) 
{
  line(x1, y1, x2, y2);
  pushMatrix();
  translate(x2, y2);
  float a = atan2(x1-x2, y2-y1);
  rotate(a);
  line(0, 0, -15, -15);
  line(0, 0, 15, -15);
  popMatrix();
} 
