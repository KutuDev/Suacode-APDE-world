int i;
int j;
int columnLimit;
int rowLimit;
int array2DSize;
void setup()
{
  size(300, 300);
  columnLimit=width/100;
  rowLimit=height/100;
  int[][] array2D = new int[rowLimit][columnLimit];
  array2D [i][j] = 0;
  for (i=0; i<columnLimit; i++) 
  {
    for (j=0; j<rowLimit; j++) 
    { 

      if (i==0 && j<3) 
      {
        array2D [i][j] = array2D [i][abs(j-1)] + 1;
      }

      if (i==1 && j<3) 
      {
        i=1;

        if (i==1 && j==0)
        {
          array2D [i][j] = array2D [i-1][j+2] + 1;
        } else
        {
          array2D [i][j] = array2D [i][j-1] + 1;
        }
      }
      
      if (i==2 && j<3) 
      {
        i=2;

        if (i==2 && j==0)
        {
          array2D [i][j] = array2D [i-1][j+2] + 1;
        } else
        {
          array2D [i][j] = array2D [i][j-1] + 1;
        }
      }
    }
  }
  print(array2D[0][0]);
  print(array2D[0][1]);
  println(array2D[0][2]);

  print(array2D[1][0]);
  print(array2D[1][1]);
  println(array2D[1][2]);

  print(array2D[2][0]);
  print(array2D[2][1]);
  println(array2D[2][2]);
}

