class Timer
{
  int totalTime;
  int savedTime;
  int passedTime;

  Timer(int tempTotalTime) 
  {
    totalTime = tempTotalTime;
  }

  void start() 
  {
    savedTime  =  millis();
  }

  boolean  isFinished() 
  {
    passedTime  =  millis()  -  savedTime;

    if (passedTime  >=  totalTime)  
    { 
      return true;
    } else { 
      return false;
    }
  }
} 
