/* 
 Program title: Breakout Game
 Program description: Arkanoid mobile game
 Created by: John Samuel as SUACODE AFRICA 2019 course project 
 Date of creation: June 3, 2019
 Date of completion: December 13, 2019
*/

Game game;
Paddle paddle;
Ball ball;

int dummyVariable = 0; //this variable ensures that game is restarted at the detection of a screen touch after game has been won
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
  
  int dpi = round(displayDensity * 100); //this variable helps deal with the visual difference in ball speed across various processors
  
  game = new Game();
  
  //constructor arguments: paddleX, paddleY, paddleWidth, paddleHeight
  paddle = new Paddle(width/2, height-10, 130, 20);
  
  //constructor arguments: ballX, ballY, ballWidth, ballHeight, radius, xSpeed, ySpeed
  ball = new Ball((width/2)-65, height-30, 10, 10, 5, dpi/30, dpi/30);
  
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

//function that turns ON the game when screen is touched 
void mousePressed() 
{
  dummyVariable++;
  
  count = 0;

  game.gameOn = true;//animation is PLAYED at this state

  //this conditional statement prevents the reversal of ball mid-way 
  if (ball.ballY == (height - paddle.paddleHeight))//this value is where ySpeed negative value should become positive before the detection of another touch 
  {
    ball.ySpeed = (-1) * (ball.ySpeed);//makes the value of ySpeed POSITIVE everytime screen is touched. This prevents the downward movement of ball after a screen touch
  } 

  if (mouseY < (height - 200) && looping == false)// this conditional statement prevents a clash between the use of mouseX by the keywords constraint & mousePressed at the same time 
  {
    loop();
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
