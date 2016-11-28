class hover
{
  void earth(int x, int y) 
  {
    if( button.overCircle((width/2), (height/2)-100, 200) ) 
    {
      earthCircle = true;
    } 
    else 
    {
      earthCircle =false;
    }
  }//end earth button
  
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
  }//end europe button
  
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
  }//end asia button
  
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
  }//end america button
  
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
  }//end south america button
  
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
  }//end africa button
  
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
  }//end austrailia button
  
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
  }//end back button
  
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
  }//end exit button
  
  void keypress(int x, int y) 
  {
      if( box.overRect(r, 550, 50,50) ) 
      {
        key[i] = true;
      } 
      else 
      {
        key[i] =false;
      }
  }//used to see if mouse over certain keyboard keys for top line
  
  void keypress2(int x, int y) 
  {
      if( box.overRect(r, 600, 50,50) ) 
      {
        key[i] = true;
      } 
      else 
      {
        key[i] =false;
      }
  }//used to see if mouse over certain keyboard keys for bottom line
}//end class hover