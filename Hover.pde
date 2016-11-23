class hover
{
  void earth(int x, int y) 
  {
    if( button.overCircle(width/2, (height/2)-100, circleSize+50) ) 
    {
      earthCircle = true;
    } 
    else 
    {
      earthCircle =false;
    }
  }
  void europe(int x, int y) 
  {
      if( button.overCircle(circleX, circleY, circleSize) ) 
      {
        europeCircle = true;
      } 
      else 
      {
        europeCircle =false;
      }
       //end update*/
  }
  void asia(int x, int y) 
  {
      if( button.overCircle(circleX+150, circleY, circleSize) ) 
      {
        asiaCircle = true;
      } 
      else 
      {
        asiaCircle =false;
      }
       //end update*/
  }
  void america(int x, int y) 
  {
      if( button.overCircle(circleX+300, circleY, circleSize) ) 
      {
        americaCircle = true;
      } 
      else 
      {
        americaCircle =false;
      }
       //end update*/
  }
  void americaS(int x, int y) 
  {
      if( button.overCircle(circleX+450, circleY, circleSize) ) 
      {
        americaSCircle = true;
      } 
      else 
      {
        americaSCircle =false;
      }
       //end update*/
  }
  void africa(int x, int y) 
  {
      if( button.overCircle(circleX+600, circleY, circleSize) ) 
      {
        africaCircle = true;
      } 
      else 
      {
        africaCircle =false;
      }
       //end update*/
  }
  void straya(int x, int y) 
  {
      if( button.overCircle(circleX+750, circleY, circleSize) ) 
      {
        strayaCircle = true;
      } 
      else 
      {
        strayaCircle =false;
      }
       //end update*/
  }
  void back(int x, int y) 
  {
      if( button.overCircle(975, 100, 40) ) 
      {
        backCircle = true;
      } 
      else 
      {
        backCircle =false;
      }
       //end update*/
  }
  void exit(int x, int y) 
  {
      if( button.overCircle(975, 50, 40) ) 
      {
        exitCircle = true;
      } 
      else 
      {
        exitCircle =false;
      }
       //end update*/
  }
  void keypress(int x, int y) 
  {
      if( button.overCircle(975, 50, 40) ) 
      {
        exitCircle = true;
      } 
      else 
      {
        exitCircle =false;
      }
       //end update*/
  }
}