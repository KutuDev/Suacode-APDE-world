/* 
  Program title: Breakout Game
  Program description: Arkanoid mobile game
  Created by: John Samuel as SUACODE AFRICA 2019 course project 
  Date of creation: June 3, 2019
  Date of completion: December 10, 2019
*/

Game game = new Game();

//constructor arguments: paddleX, paddleY, paddleWidth, paddleHeight 
Paddle paddle = new Paddle(1080, 1070, 130, 20);

//constructor arguments: ballX, ballY, ballWidth, ballHeight, radius, xSpeed, ySpeed
Ball ball = new Ball(1015, 1050, 10, 10, 5, 10, 10);

int x, y;//variables to hold the bricks' coordinates during initialization of array in setup() 

int brickWidth = 100;
int brickHeight = 50;
int brickPadding = 1;
int firstBrickXCoordinate = 1;
int firstBrickYCoordinate = 1;
int bricksColumnCount;
int bricksRowCount;
int totalBricks;

Brick[] bricks;

int numOfBricksHit; //this variable stores the number of bricks that have been hit by ball

int count; //this variable's iteration much later makes display to be updated before animation is paused
int avoidClash = 0; //this dummy variable prevents a clash in the restart game conditional statement under the mousePressed callback

void setup ()
{
  fullScreen();
  orientation(LANDSCAPE);

  int k = 0;

  bricksColumnCount = width/brickWidth;
  bricksRowCount = 1+((height/3)/brickHeight);
  totalBricks = bricksRowCount*bricksColumnCount;

  bricks = new Brick[totalBricks];

  y = firstBrickYCoordinate;

  for (int i = 0; i < bricksRowCount; i++) 
  {
    x = firstBrickXCoordinate; // x coordinate for the first column of Bricks 
    for (int j = 0; j < bricksColumnCount; j++) 
    {
      bricks[k] =  new Brick(x, y);
      k++;
      x += brickWidth + brickPadding;
    }
    y += brickHeight + brickPadding;
  }
}

void draw ()
{
  background(40, 110, 251);
  game.startGame(paddle, ball, bricks);
}

class Game
{
  int screenWidth;
  int screenHeight;
  int halfOfScreenWidth;
  int halfOfScreenHeight;

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
    screenWidth = 2160;
    screenHeight = 1080;
    halfOfScreenWidth = 1080;
    halfOfScreenHeight = 540;

    fontSize = 40;

    score = 0;
    playerScore = score;
    scoreTextX = 1;
    scoreTextY = 52;
    scoreNumberX = 115;
    scoreNumberY = 52;
    scoreIncrement = 10;

    lifesOfPlayer = 5;
    playerLifes = lifesOfPlayer;
    lifesTextX = 203;
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
      paddle.paddleX = constrain(mouseX, 0, (screenWidth - paddle.paddleHeight));
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
        ball.ballX = 1015;
        ball.ballY = 1040;
        paddle.paddleX = 1080;
        paddle.paddleY = 1060;

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
        //the below lines ensures that the paddle & ball starts off at their initial position when animation is RESUMED
        ball.ballX = 1015;
        ball.ballY = 1060;
        paddle.paddleX = 1080;
        paddle.paddleY = 1070;

        noLoop();
      }
    }
  }

  void playerGameStatus(String status) 
  {
    fill(255);
    textSize(100);
    textAlign(CENTER); 
    text(status, halfOfScreenWidth, halfOfScreenHeight);
  }

  void restartGame() 
  {
    playerScore = score;
    playerLifes = lifesOfPlayer;
    setup();//this permits the redraw of ALL bricks by initializing the brick array 
    startGame(paddle, ball, bricks);
  }
}

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
      return;
    }
    
    //function call that determines if the ball overlaps brick
    hasOverlappedBrick = doesOverlap(brickX, brickY, brickWidth, brickHeight, ball.ballX, ball.ballY, ball.radius);

    //conditional statement that is executed when the ball overlaps brick
    if (hasOverlappedBrick)
    {
      numOfBricksHit = numOfBricksHit + 1;
      ball.ySpeed = (-1) * (ball.ySpeed);
      game.incrementPlayerScore();
      brickHit = true;
    }
  }
}

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
      ball.ySpeed = (-1) * (ball.ySpeed);
    }
  }
}

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
    if (ballX - radius < 0 || ballX + radius > game.screenWidth)
    {
      xSpeed = (-1) * (xSpeed);
    }

    //checks if ball collides with the screen's bottom
    if (ballY + radius > game.screenHeight) 
    {
      if (game.playerLifes > 0)
      {
        ySpeed = (-1) * (ySpeed);
        
        game.playerLifes = game.playerLifes - 1;
      }
    }
  }
}

//function that turns ON the game when screen is touched 
void mousePressed() 
{
  count = 0;
  
  numOfBricksHit = 0;
  
  game.gameOn = true;//animation is PLAYED at this state
  
  //this conditional statement prevents the reversal of ball mid-way 
  if (ball.ballY == (height - paddle.paddleHeight))//this value is where ySpeed negative value should become positive before the detection of another touch 
  {
    ball.ySpeed = (-1) * (ball.ySpeed);//makes the value of ySpeed POSITIVE everytime screen is touched. This prevents the downward movement of ball after a screen touch
  } 

  if (mouseY < (height - 200))// this conditional statement prevents a clash between the use of mouseX by the keywords constraint & mousePressed at the same time 
  {
    if (looping == false)
    {
      loop();
    }
  } 
  
  if (game.playerLifes == 0 || (numOfBricksHit == 0 && avoidClash != 0))//this conditional statement prevents the restart of game on the detection of another mousePressed while game is ON
  {
    game.restartGame();
  }
}

//function that checks if ball collides with an object 
boolean doesOverlap(float xPaddle, float yPaddle, float widthPaddle, float heightPaddle, float xBall, float yBall, float radius) 
{
  float ballLeftEdge = xBall-radius; //left edge of ball
  float ballBottomEdge = yBall+radius; //bottom edge of ball
  float ballRightEdge = xBall+radius; //right edge of ball
  float ballTopEdge = yBall-radius; //top edge of ball

  float paddleLeftEdge = xPaddle; //left edge of paddle
  float paddleRightEdge = xPaddle+widthPaddle; //right edge of paddle
  float paddleTopEdge = yPaddle; //top edge of paddle
  float paddleBottomEdge = yPaddle+heightPaddle; //bottom edge of paddle

  if (ballBottomEdge >= paddleTopEdge //Check if bottom edge of ball and top edge of paddle overlap
    && ballTopEdge <= paddleBottomEdge //Check if top edge of ball and bottom edge of paddle overlap
    && ballLeftEdge <= paddleRightEdge //Check if left edge of ball and right edge of paddle overlap
    && ballRightEdge >= paddleLeftEdge) //Check if right edge of ball and left edge of paddle overlap
  {   
    return true;
  } else { 
    return false;
  }
}
