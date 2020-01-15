class Paddle
{
  float paddleX; //maxX/2
  float paddleY; // maxY - paddleHeight
  float paddleWidth;
  float paddleHeight;
  boolean hasOverlappedPaddle;

  Paddle(float tempPaddleX, float tempPaddleY, float tempPaddleWidth, float tempPaddleHeight) 
  {
    paddleX = tempPaddleX; //maxX/2
    paddleY = tempPaddleY; // maxY - paddleHeight
    paddleWidth = tempPaddleWidth;
    paddleHeight = tempPaddleHeight;
    hasOverlappedPaddle = false;
  }

  //function that display paddle
  void display(Game game) 
  {
    fill(255);//colors ball & paddle white
    rectMode(CENTER);
    game.createRectangle(paddleX, paddleY, paddleWidth, paddleHeight);//creates paddle
  }

  //function that checks for a collision between ball and paddle 
  void checkBallCollisionWithPaddle(Ball ball)
  {
    //function call that determines if the ball overlaps paddle
    hasOverlappedPaddle = doesOverlap(paddleX, paddleY, paddleWidth, paddleHeight, ball.ballX, ball.ballY, ball.radius);

    //conditional statement that is executed when the ball overlaps paddle 
    if (hasOverlappedPaddle)
    {
      ball.ySpeed = (-1) * ball.ySpeed;
    }
  }
}
