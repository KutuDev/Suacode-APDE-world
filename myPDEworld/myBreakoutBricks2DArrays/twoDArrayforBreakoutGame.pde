int numBricks=0;
//Program to create two 2D arrays to hold the y & y coordinates of bricks in my BREAKOUT GAME
void setup()
{
  size(300, 300);
  int[][] xarray2D = new int[3000][3000];//a 2D array that stores the y coordinates of bricks in my BREAKOUT GAME
  int[][] yarray2D = new int[3000][3000];//a 2D array that stores the y coordinates of bricks in my BREAKOUT GAME

  // the array sizes above MUST be the same for one 2D array created i.e they're inseparable twin values 

  for (int i=1; i<=2060; i+=101) 
  {
    for (int j=1; j<=360; j+=51) 
    {
      if (i==1)
      {
        xarray2D [i][j] = 1;
      } else
      {
        xarray2D [i][j] = i; // i here results in the x coordinate (i.e j loop) 2D array
      }

      if (j==1)
      {
        yarray2D [i][j] = 1;
      } else
      {
        yarray2D [i][j] = j; // j here results in the y coordinate (i.e i loop) 2D array
      }
      numBricks++;
    }
  } 

  println(numBricks);

  println("xarray2D matrix");
  print(xarray2D[1][1]+" ");
  print(xarray2D[102][1]+" ");
  print(xarray2D[203][1]+" ");
  print(xarray2D[304][1]+" ");
  print(xarray2D[405][1]+" ");
  print(xarray2D[506][1]+" ");
  print(xarray2D[607][1]+" ");
  print(xarray2D[708][1]+" ");
  print(xarray2D[809][1]+" ");
  print(xarray2D[910][1]+" ");
  print(xarray2D[1011][1]+" ");
  print(xarray2D[1112][1]+" ");
  print(xarray2D[1213][1]+" ");
  print(xarray2D[1314][1]+" ");
  print(xarray2D[1415][1]+" ");
  print(xarray2D[1516][1]+" ");
  print(xarray2D[1617][1]+" ");
  print(xarray2D[1718][1]+" ");
  print(xarray2D[1819][1]+" ");
  print(xarray2D[1920][1]+" ");
  println(xarray2D[2021][1]+" ");

  print(xarray2D[1][52]+" ");
  print(xarray2D[102][52]+" ");
  print(xarray2D[203][52]+" ");
  print(xarray2D[304][52]+" ");
  print(xarray2D[405][52]+" ");
  print(xarray2D[506][52]+" ");
  print(xarray2D[607][52]+" ");
  print(xarray2D[708][52]+" ");
  print(xarray2D[809][52]+" ");
  print(xarray2D[910][52]+" ");
  print(xarray2D[1011][52]+" ");
  print(xarray2D[1112][52]+" ");
  print(xarray2D[1213][52]+" ");
  print(xarray2D[1314][52]+" ");
  print(xarray2D[1415][52]+" ");
  print(xarray2D[1516][52]+" ");
  print(xarray2D[1617][52]+" ");
  print(xarray2D[1718][52]+" ");
  print(xarray2D[1819][52]+" ");
  print(xarray2D[1920][52]+" ");
  println(xarray2D[2021][52]+" ");

  print(xarray2D[1][103]+" ");
  print(xarray2D[102][103]+" ");
  print(xarray2D[203][103]+" ");
  print(xarray2D[304][103]+" ");
  print(xarray2D[405][103]+" ");
  print(xarray2D[506][103]+" ");
  print(xarray2D[607][103]+" ");
  print(xarray2D[708][103]+" ");
  print(xarray2D[809][103]+" ");
  print(xarray2D[910][103]+" ");
  print(xarray2D[1011][103]+" ");
  print(xarray2D[1112][103]+" ");
  print(xarray2D[1213][103]+" ");
  print(xarray2D[1314][103]+" ");
  print(xarray2D[1415][103]+" ");
  print(xarray2D[1516][103]+" ");
  print(xarray2D[1617][103]+" ");
  print(xarray2D[1718][103]+" ");
  print(xarray2D[1819][103]+" ");
  print(xarray2D[1920][103]+" ");
  println(xarray2D[2021][103]+" ");

  print(xarray2D[1][154]+" ");
  print(xarray2D[102][154]+" ");
  print(xarray2D[203][154]+" ");
  print(xarray2D[304][154]+" ");
  print(xarray2D[405][154]+" ");
  print(xarray2D[506][154]+" ");
  print(xarray2D[607][154]+" ");
  print(xarray2D[708][154]+" ");
  print(xarray2D[809][154]+" ");
  print(xarray2D[910][154]+" ");
  print(xarray2D[1011][154]+" ");
  print(xarray2D[1112][154]+" ");
  print(xarray2D[1213][154]+" ");
  print(xarray2D[1314][154]+" ");
  print(xarray2D[1415][154]+" ");
  print(xarray2D[1516][154]+" ");
  print(xarray2D[1617][154]+" ");
  print(xarray2D[1718][154]+" ");
  print(xarray2D[1819][154]+" ");
  print(xarray2D[1920][154]+" ");
  println(xarray2D[2021][154]+" ");

  print(xarray2D[1][205]+" ");
  print(xarray2D[102][205]+" ");
  print(xarray2D[203][205]+" ");
  print(xarray2D[304][205]+" ");
  print(xarray2D[405][205]+" ");
  print(xarray2D[506][205]+" ");
  print(xarray2D[607][205]+" ");
  print(xarray2D[708][205]+" ");
  print(xarray2D[809][205]+" ");
  print(xarray2D[910][205]+" ");
  print(xarray2D[1011][205]+" ");
  print(xarray2D[1112][205]+" ");
  print(xarray2D[1213][205]+" ");
  print(xarray2D[1314][205]+" ");
  print(xarray2D[1415][205]+" ");
  print(xarray2D[1516][205]+" ");
  print(xarray2D[1617][205]+" ");
  print(xarray2D[1718][205]+" ");
  print(xarray2D[1819][205]+" ");
  print(xarray2D[1920][205]+" ");
  println(xarray2D[2021][205]+" ");

  print(xarray2D[1][256]+" ");
  print(xarray2D[102][256]+" ");
  print(xarray2D[203][256]+" ");
  print(xarray2D[304][256]+" ");
  print(xarray2D[405][256]+" ");
  print(xarray2D[506][256]+" ");
  print(xarray2D[607][256]+" ");
  print(xarray2D[708][256]+" ");
  print(xarray2D[809][256]+" ");
  print(xarray2D[910][256]+" ");
  print(xarray2D[1011][256]+" ");
  print(xarray2D[1112][256]+" ");
  print(xarray2D[1213][256]+" ");
  print(xarray2D[1314][256]+" ");
  print(xarray2D[1415][256]+" ");
  print(xarray2D[1516][256]+" ");
  print(xarray2D[1617][256]+" ");
  print(xarray2D[1718][256]+" ");
  print(xarray2D[1819][256]+" ");
  print(xarray2D[1920][256]+" ");
  println(xarray2D[2021][256]+" ");

  print(xarray2D[1][307]+" ");
  print(xarray2D[102][307]+" ");
  print(xarray2D[203][307]+" ");
  print(xarray2D[304][307]+" ");
  print(xarray2D[405][307]+" ");
  print(xarray2D[506][307]+" ");
  print(xarray2D[607][307]+" ");
  print(xarray2D[708][307]+" ");
  print(xarray2D[809][307]+" ");
  print(xarray2D[910][307]+" ");
  print(xarray2D[1011][307]+" ");
  print(xarray2D[1112][307]+" ");
  print(xarray2D[1213][307]+" ");
  print(xarray2D[1314][307]+" ");
  print(xarray2D[1415][307]+" ");
  print(xarray2D[1516][307]+" ");
  print(xarray2D[1617][307]+" ");
  print(xarray2D[1718][307]+" ");
  print(xarray2D[1819][307]+" ");
  print(xarray2D[1920][307]+" ");
  println(xarray2D[2021][307]+" ");

  print(xarray2D[1][358]+" ");
  print(xarray2D[102][358]+" ");
  print(xarray2D[203][358]+" ");
  print(xarray2D[304][358]+" ");
  print(xarray2D[405][358]+" ");
  print(xarray2D[506][358]+" ");
  print(xarray2D[607][358]+" ");
  print(xarray2D[708][358]+" ");
  print(xarray2D[809][358]+" ");
  print(xarray2D[910][358]+" ");
  print(xarray2D[1011][358]+" ");
  print(xarray2D[1112][358]+" ");
  print(xarray2D[1213][358]+" ");
  print(xarray2D[1314][358]+" ");
  print(xarray2D[1415][358]+" ");
  print(xarray2D[1516][358]+" ");
  print(xarray2D[1617][358]+" ");
  print(xarray2D[1718][358]+" ");
  print(xarray2D[1819][358]+" ");
  print(xarray2D[1920][358]+" ");
  println(xarray2D[2021][358]+" ");

  println();

  println("yarray2D matrix");
  print(yarray2D[1][1]+" ");
  print(yarray2D[102][1]+" ");
  print(yarray2D[203][1]+" ");
  print(yarray2D[304][1]+" ");
  print(yarray2D[405][1]+" ");
  print(yarray2D[506][1]+" ");
  print(yarray2D[607][1]+" ");
  print(yarray2D[708][1]+" ");
  print(yarray2D[809][1]+" ");
  print(yarray2D[910][1]+" ");
  print(yarray2D[1011][1]+" ");
  print(yarray2D[1112][1]+" ");
  print(yarray2D[1213][1]+" ");
  print(yarray2D[1314][1]+" ");
  print(yarray2D[1415][1]+" ");
  print(yarray2D[1516][1]+" ");
  print(yarray2D[1617][1]+" ");
  print(yarray2D[1718][1]+" ");
  print(yarray2D[1819][1]+" ");
  print(yarray2D[1920][1]+" ");
  println(yarray2D[2021][1]+" ");

  print(yarray2D[1][52]+" ");
  print(yarray2D[102][52]+" ");
  print(yarray2D[203][52]+" ");
  print(yarray2D[304][52]+" ");
  print(yarray2D[405][52]+" ");
  print(yarray2D[506][52]+" ");
  print(yarray2D[607][52]+" ");
  print(yarray2D[708][52]+" ");
  print(yarray2D[809][52]+" ");
  print(yarray2D[910][52]+" ");
  print(yarray2D[1011][52]+" ");
  print(yarray2D[1112][52]+" ");
  print(yarray2D[1213][52]+" ");
  print(yarray2D[1314][52]+" ");
  print(yarray2D[1415][52]+" ");
  print(yarray2D[1516][52]+" ");
  print(yarray2D[1617][52]+" ");
  print(yarray2D[1718][52]+" ");
  print(yarray2D[1819][52]+" ");
  print(yarray2D[1920][52]+" ");
  println(yarray2D[2021][52]+" ");

  print(yarray2D[1][103]+" ");
  print(yarray2D[102][103]+" ");
  print(yarray2D[203][103]+" ");
  print(yarray2D[304][103]+" ");
  print(yarray2D[405][103]+" ");
  print(yarray2D[506][103]+" ");
  print(yarray2D[607][103]+" ");
  print(yarray2D[708][103]+" ");
  print(yarray2D[809][103]+" ");
  print(yarray2D[910][103]+" ");
  print(yarray2D[1011][103]+" ");
  print(yarray2D[1112][103]+" ");
  print(yarray2D[1213][103]+" ");
  print(yarray2D[1314][103]+" ");
  print(yarray2D[1415][103]+" ");
  print(yarray2D[1516][103]+" ");
  print(yarray2D[1617][103]+" ");
  print(yarray2D[1718][103]+" ");
  print(yarray2D[1819][103]+" ");
  print(yarray2D[1920][103]+" ");
  println(yarray2D[2021][103]+" ");

  print(yarray2D[1][154]+" ");
  print(yarray2D[102][154]+" ");
  print(yarray2D[203][154]+" ");
  print(yarray2D[304][154]+" ");
  print(yarray2D[405][154]+" ");
  print(yarray2D[506][154]+" ");
  print(yarray2D[607][154]+" ");
  print(yarray2D[708][154]+" ");
  print(yarray2D[809][154]+" ");
  print(yarray2D[910][154]+" ");
  print(yarray2D[1011][154]+" ");
  print(yarray2D[1112][154]+" ");
  print(yarray2D[1213][154]+" ");
  print(yarray2D[1314][154]+" ");
  print(yarray2D[1415][154]+" ");
  print(yarray2D[1516][154]+" ");
  print(yarray2D[1617][154]+" ");
  print(yarray2D[1718][154]+" ");
  print(yarray2D[1819][154]+" ");
  print(yarray2D[1920][154]+" ");
  println(yarray2D[2021][154]+" ");

  print(yarray2D[1][205]+" ");
  print(yarray2D[102][205]+" ");
  print(yarray2D[203][205]+" ");
  print(yarray2D[304][205]+" ");
  print(yarray2D[405][205]+" ");
  print(yarray2D[506][205]+" ");
  print(yarray2D[607][205]+" ");
  print(yarray2D[708][205]+" ");
  print(yarray2D[809][205]+" ");
  print(yarray2D[910][205]+" ");
  print(yarray2D[1011][205]+" ");
  print(yarray2D[1112][205]+" ");
  print(yarray2D[1213][205]+" ");
  print(yarray2D[1314][205]+" ");
  print(yarray2D[1415][205]+" ");
  print(yarray2D[1516][205]+" ");
  print(yarray2D[1617][205]+" ");
  print(yarray2D[1718][205]+" ");
  print(yarray2D[1819][205]+" ");
  print(yarray2D[1920][205]+" ");
  println(yarray2D[2021][205]+" ");

  print(yarray2D[1][256]+" ");
  print(yarray2D[102][256]+" ");
  print(yarray2D[203][256]+" ");
  print(yarray2D[304][256]+" ");
  print(yarray2D[405][256]+" ");
  print(yarray2D[506][256]+" ");
  print(yarray2D[607][256]+" ");
  print(yarray2D[708][256]+" ");
  print(yarray2D[809][256]+" ");
  print(yarray2D[910][256]+" ");
  print(yarray2D[1011][256]+" ");
  print(yarray2D[1112][256]+" ");
  print(yarray2D[1213][256]+" ");
  print(yarray2D[1314][256]+" ");
  print(yarray2D[1415][256]+" ");
  print(yarray2D[1516][256]+" ");
  print(yarray2D[1617][256]+" ");
  print(yarray2D[1718][256]+" ");
  print(yarray2D[1819][256]+" ");
  print(yarray2D[1920][256]+" ");
  println(yarray2D[2021][256]+" ");

  print(yarray2D[1][307]+" ");
  print(yarray2D[102][307]+" ");
  print(yarray2D[203][307]+" ");
  print(yarray2D[304][307]+" ");
  print(yarray2D[405][307]+" ");
  print(yarray2D[506][307]+" ");
  print(yarray2D[607][307]+" ");
  print(yarray2D[708][307]+" ");
  print(yarray2D[809][307]+" ");
  print(yarray2D[910][307]+" ");
  print(yarray2D[1011][307]+" ");
  print(yarray2D[1112][307]+" ");
  print(yarray2D[1213][307]+" ");
  print(yarray2D[1314][307]+" ");
  print(yarray2D[1415][307]+" ");
  print(yarray2D[1516][307]+" ");
  print(yarray2D[1617][307]+" ");
  print(yarray2D[1718][307]+" ");
  print(yarray2D[1819][307]+" ");
  print(yarray2D[1920][307]+" ");
  println(yarray2D[2021][307]+" ");

  print(yarray2D[1][358]+" ");
  print(yarray2D[102][358]+" ");
  print(yarray2D[203][358]+" ");
  print(yarray2D[304][358]+" ");
  print(yarray2D[405][358]+" ");
  print(yarray2D[506][358]+" ");
  print(yarray2D[607][358]+" ");
  print(yarray2D[708][358]+" ");
  print(yarray2D[809][358]+" ");
  print(yarray2D[910][358]+" ");
  print(yarray2D[1011][358]+" ");
  print(yarray2D[1112][358]+" ");
  print(yarray2D[1213][358]+" ");
  print(yarray2D[1314][358]+" ");
  print(yarray2D[1415][358]+" ");
  print(yarray2D[1516][358]+" ");
  print(yarray2D[1617][358]+" ");
  print(yarray2D[1718][358]+" ");
  print(yarray2D[1819][358]+" ");
  print(yarray2D[1920][358]+" ");
  println(yarray2D[2021][358]+" ");
} 
