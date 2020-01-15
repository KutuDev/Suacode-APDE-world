//A timer that goes off at 5 seconds. (Adapted from Daniel Shiffman's book on Learning Processing) 

Timer timer = new Timer(5000); //5000 milliseconds is equal to 5 seconds 
boolean timeElapses;

void setup()
{
  size(300, 300);
  timer.start();
}

void draw()
{
  timeElapses = timer.isFinished();

  if (timeElapses) 
  {
    background(255);
    println("5 seconds have passed");
    timer.start();
  }
}
