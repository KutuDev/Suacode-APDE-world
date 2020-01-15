class Brick
{
  int brickX;
  int brickY;
  boolean brickHit;
  boolean hasOverlappedBrick;

  Brick(int tempBrickX, int tempBrickY) 
  {
    brickX = tempBrickX;
    brickY = tempBrickY;
    brickHit = false;
    hasOverlappedBrick = false;
  }

  void displayBricks(Game game) 
  {
    if (!brickHit) 
    {
      fill(204, 102, 0);
      rectMode(CORNER);
      game.createRectangle(brickX, brickY, brickWidth, brickHeight);
    } 
  }

  //function that checks for a collision between ball and a brick
  void checkBallCollisionWithBrick(Game game, Ball ball)
  {
    if (brickHit) 
    {
      numOfBricksHit++;
      
      return;
    }
    
    //function call that determines if the ball overlaps brick
    hasOverlappedBrick = doesOverlap(brickX, brickY, brickWidth, brickHeight, ball.ballX, ball.ballY, ball.radius);

    //conditional statement that is executed when the ball overlaps brick
    if (hasOverlappedBrick)
    {
      ball.ySpeed = (-1) * (ball.ySpeed);
      game.incrementPlayerScore();
      brickHit = true;
    }
  }
}
