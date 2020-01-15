void draw() 
{ 
  background(204); 
  line(0, 0, 0 , 0);//HYPOTHESIS 1
  
  fill(255,0,0);
  ellipse(width/2,50,50,50);
  rectMode(CENTER);
  rect(width/2,height/2,200,200);
  rect(width/2,height-50,200,200);
  
  if (mousePressed) 
  { 
    return;  //HYPOTHESIS 2. Break out of draw(), skipping the line statement below
  } 
  line(0, height, width, 0);  // Executed only if mouse is not pressed
  
}
