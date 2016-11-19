class hover
{
  void europe(int x, int y) 
  {
      if( europeButton.overCircle(circleX, circleY, circleSize) ) 
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
      if( europeButton.overCircle(circleX+150, circleY, circleSize) ) 
      {
        asiaCircle = true;
      } 
      else 
      {
        asiaCircle =false;
      }
       //end update*/
  }
}