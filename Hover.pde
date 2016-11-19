class hover
{
  void europe(int x, int y) 
  {
      if( Button.overCircle(circleX, circleY, circleSize) ) 
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
      if( Button.overCircle(circleX+150, circleY, circleSize) ) 
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
      if( Button.overCircle(circleX+300, circleY, circleSize) ) 
      {
        americaCircle = true;
      } 
      else 
      {
        americaCircle =false;
      }
       //end update*/
  }
}