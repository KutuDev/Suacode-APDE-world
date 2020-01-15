class Game
{
  int fontSize;

  int score;
  int playerScore;
  int scoreTextX;
  int scoreTextY;
  int scoreNumberX;
  int scoreNumberY;
  int scoreIncrement;

  int lifesOfPlayer;
  int playerLifes;
  int lifesTextX;
  int lifesTextY;
  int lifesNumberX;
  int lifesNumberY;

  boolean gameOn;

  Game() 
  {
    fontSize = 40;

    score = 0;
    playerScore = score;
    scoreTextX = 1;
    scoreTextY = 52;
    scoreNumberX = 115;
    scoreNumberY = 52;
    scoreIncrement = 10;

    lifesOfPlayer = 1+((height/3)/brickHeight); //playerLifes is equal to row number of bricks 
    playerLifes = lifesOfPlayer;
    lifesTextX = 303;
    lifesTextY = 52;
    lifesNumberX = 308;
    lifesNumberY = 52;

    gameOn = false;//animation is PAUSED at this state
  }

  void createRectangle(float xPaddle, float yPaddle, float widthPaddle, float heightPaddle) 
  {
    rect(xPaddle, yPaddle, widthPaddle, heightPaddle);
  }

  void startGame(Paddle paddle, Ball ball, Brick[] bricks) 
  {
    //this conditional statement ensures that game engine is turned ON for a RESTART of the game after game has been previously WON
    if(dummyVariable != 0) 
    {
      game.gameOn = true;
    }
   
    numOfBricksHit = 0;
    
    paddle.display(game);
    ball.display(game);

    for (int i = 0; i < totalBricks; i++) 
    {
      bricks[i].displayBricks(game); 
      bricks[i].checkBallCollisionWithBrick(game, ball);
    }

    for (int j = 0; j < bricksColumnCount; j++) 
    {
      displayPlayerScoreAndLifes();//this is located HERE (in a loop), to avoid this function's output being hid under the bricks at the display output
    }

    if (gameOn) 
    {
      ball.move(game);
      movePaddle(paddle);
      paddle.checkBallCollisionWithPaddle(ball);
      ball.checkWall(game);
      gameOver();
      gameWon();
    }
  }

  //function that display player's scores
  void displayPlayerScoreAndLifes() 
  {
    fill(255);
    textSize(fontSize);
    textAlign(LEFT);
    text("Score:"+playerScore+" ", scoreTextX, scoreTextY);
    text("Lifes:"+playerLifes+" ", lifesTextX, lifesTextY);
  }

  //function that moves paddles vertically only
  void movePaddle(Paddle paddle) 
  {
    if (mouseY > (height - 200))// this conditional statement prevents a clash between the use of mouseX by the keywords constraint & mousePressed at the same time 
    {
      paddle.paddleX = constrain(mouseX, 0, (width - paddle.paddleHeight));
    }
  }

  void incrementPlayerScore() 
  {
    playerScore = playerScore + scoreIncrement; // increases player's score
  }

  void gameOver()
  {
    //conditional statement that checks if all player lifes has been exhausted 
    if (playerLifes == 0)
    {
      count++;

      playerGameStatus("GAME LOST!!!");

      if (count == 2) // this ensures that playerLifes becomes 0 on display before animation is PAUSED by noLoop() 
      {
        //the below lines ensures that the paddle & ball starts off at their initial position when animation is RESUMED
        ball.ballX = (width/2)-65;
        ball.ballY = height-40;
        paddle.paddleX = width/2;
        paddle.paddleY = height-20;

        noLoop();
      }
    }
  }

  void gameWon() 
  {
    //conditional statement that checks if player has attained maximum score
    if (numOfBricksHit == totalBricks)
    {
      count++;
      avoidClash++;

      playerGameStatus("GAME WON!!!"); 

      if (count == 2) // this ensures that playerScore becomes maximum before animation is PAUSED by noLoop() 
      {
        numOfBricksHit = 0;
        
        //the below lines ensures that the paddle & ball starts off at their initial position when animation is RESUMED
        ball.ballX = (width/2)-65;
        ball.ballY = height-20;
        paddle.paddleX = width/2;
        paddle.paddleY = height-10;
        
        noLoop();
      }
    }
  }

  void playerGameStatus(String status) 
  {
    fill(255);
    textSize(100);
    textAlign(CENTER); 
    text(status, width/2, height/2);
  }

  void restartGame() 
  {
    playerScore = score;
    playerLifes = lifesOfPlayer;
    setup();//this permits the redraw of ALL bricks by initializing the brick array 
    startGame(paddle, ball, bricks);
  }
}
