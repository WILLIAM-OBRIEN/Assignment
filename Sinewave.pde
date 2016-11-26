class sinewave
{
  void wave()
  {
    distanceX = endX-startX;
    completeCycle = TWO_PI/float(distanceX);
    

    fill(0,255,0);
    noStroke();
    posY = 350;
    WaveSpeed = 0.0007;
  
    for (int i = startX; i<endX; i+=step) 
    {
      temps += (millis()%i)*WaveSpeed;
      variationY = sin(((i-startX)+temps)*completeCycle);
      variationY*=amplitude;
      ellipse(i, (posY+variationY), 5, 5);
    }
  }
}