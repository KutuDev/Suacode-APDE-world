class Ball
{
  float ballX; //paddleX - (paddleWidth / 2)
  float ballY; //paddleY - paddleHeight 
  float ballWidth;
  float ballHeight;
  float radius;
  float xSpeed;
  float ySpeed;

  Ball(float tempBallX, float tempBallY, float tempBallWidth, float tempBallHeight, float tempRadius, float tempXSpeed, float tempYSpeed) 
  {
    ballX = tempBallX; //paddleX - (paddleWidth / 2)
    ballY = tempBallY; //paddleY - paddleHeight 
    ballWidth = tempBallWidth;
    ballHeight = tempBallHeight;
    radius = tempRadius;
    xSpeed = tempXSpeed;
    ySpeed = tempYSpeed;
  }

  //function that displays ball
  void display(Game game) 
  {
    fill(255);//colors ball white
    rectMode(CORNER);
    game.createRectangle(ballX, ballY, ballWidth, ballHeight);//creates a square-shaped ball
  }

  void move(Game game) 
  {
    if (game.gameOn) //starts game 
    {
      //moveball statements 
      ballX = ballX + xSpeed;
      ballY = ballY - ySpeed;//Ball expected to move upwards ONLY, hence the need for the minus sign
    }
  }

  void checkWall(Game game) 
  {
    //detects if ball collides with the top wall
    if (ballY - radius < 0)
    {
      ySpeed = (-1) * (ySpeed); // reverses ball's direction of travel
    }

    //detects if ball collides with either the left or right wall
    if (ballX - radius < 0 || ballX + radius > width)
    {
      xSpeed = (-1) * (xSpeed);
    }

    //checks if ball collides with the screen's bottom
    if (ballY + radius > height && game.playerLifes > 0) 
    {
        ySpeed = (-1) * (ySpeed);
        game.playerLifes--;
    }
  }
}
