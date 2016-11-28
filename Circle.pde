class Circle
{
  boolean overCircle(int x, int y, int diameter) 
  {
    float SpaceX = x - mouseX;
    float SpaceY = y - mouseY;
    if (sqrt(sq(SpaceX) + sq(SpaceY)) < diameter/2 ) 
    {
      return true;
    } 
    
    else 
    {
      return false;
    }
  }//end overcircle
}//this class is used to see if user is above the different buttons in stage 2 and the earth picture in stage 1