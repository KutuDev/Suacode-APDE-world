//Suacode logo 2 by John Samuel © Suacode 2019 
//NOTE: the code for the curved text was gotten online from Processing.py, then, I modified it for use here 
//https://py.processing.org/tutorials/text/  is the link to the above mentioned site

int halfOfScreenWidth;
int halfOfScreenHeight;
float r=200.0;//The radius of a circle that curved text wraps around 
float w;//The width of each alphabet in the curved text
float arclength, theta;
char currentChar;
char curvedText[] = {'A', 'F', 'R', 'I', 'C', 'A'};//array that stores the curved text 

void setup() 
{
  fullScreen();
  orientation(LANDSCAPE);
  textAlign(CENTER);// this must be COMPULSORILY located here for the curved text
  textSize(150);//this must be COMPULSORILY located here as the curved text font size
}

void draw() 
{
  background(255);

  halfOfScreenWidth = width/2;
  halfOfScreenHeight= height/2;

  //function calls to use in-built Android fonts 
  PFont font1 = createFont("Serif-Italic", 40);
  PFont font2 = createFont("SansSerif", 200);

  fill(0);
  textFont(font1);
  textSize(40);
  text("Coding on your mobile...", halfOfScreenWidth, halfOfScreenHeight+210);

  fill(40, 110, 251);

  textSize(200);
  textFont(font2);
  text("C", halfOfScreenWidth, halfOfScreenHeight);  //letter C

  textSize(60);
  text("ODE", halfOfScreenWidth+125, halfOfScreenHeight-50);

  textSize(100);

  fill(255, 0, 0);//first color component of the Ghanaian flag
  text("S", halfOfScreenWidth-210, halfOfScreenHeight);

  fill(240, 188, 7);//second color component of the Ghanaian flag
  text("U", halfOfScreenWidth-141, halfOfScreenHeight);

  fill(0, 128, 0);//third color component of the Ghanaian flag
  text("A", halfOfScreenWidth-76, halfOfScreenHeight);

  //The following lines of code produces a curved text

  //the coordinates of the origin of a circle round which curved text wraps
  translate((width-30)/2, (height-100)/2); 

  //We must keep track of our position along the curve   
  arclength = 0.0;//arclength is equivalent to the length of curved text

  //For each alphabets in the curved text
  for (int i=0; i<curvedText.length; i++) 
  {
    currentChar=curvedText[i];
    w=textWidth(currentChar);

    //Each alphabet is centered, so we move half the width         
    arclength += w/2;

    //Angle in radians is the arclength divided by the radius         
    theta = (PI-(PI/4))-(arclength/r);// this determines the starting point of curved text

    pushMatrix();

    //Polar to cartesian coordinate conversion 
    translate(r*cos(theta), r*sin(theta)); 

    //Rotate each alphabet      
    rotate(theta-(PI/2));//rotate is offset by 90 degrees

    //Display the alphabets

    fill(128, 0, 0, 191);//opaque brown color representing the African continent 
    textFont(font2);
    textSize(100);
    text(currentChar, 0, 0); 

    popMatrix();

    //Move halfway again        
    arclength += w/2;
  }
}
