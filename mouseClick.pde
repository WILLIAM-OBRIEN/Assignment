class mouseclick
{
  void earthClick()
  {
      gamestate=2;
      println("GameState 2");
  }
  
  void europeClick()
  {
      if(europeCounter==0) 
      {
        interact=0;
        europeOnly=1;
        showAll=0;
        europeCounter++; 
        println("Europe");
      } 
  }
  
  void asiaClick()
  {
      if(asiaCounter==0) 
      {
        interact=0;
        asiaOnly=1;
        showAll=0;
        asiaCounter++; 
        println("Asia");
      } 
  }
  void americaClick()
  {
      if(americaCounter==0) 
      {
        interact=0;
        americaOnly=1;
        showAll=0;
        americaCounter++; 
        println("America");
      } 
  }
  void americaSClick()
  {
      if(americaSCounter==0) 
      {
        interact=0;
        americaSOnly=1;
        showAll=0;
        americaSCounter++; 
        println("South America");
      } 
  }
  void africaClick()
  {
      if(africaCounter==0) 
      {
        interact=0;
        africaOnly=1;
        showAll=0;
        africaCounter++; 
        println("Africa");
      } 
  }
  void strayaClick()
  {
      if(strayaCounter==0) 
      {
        interact=0;
        strayaOnly=1;
        showAll=0;
        strayaCounter++; 
        println("Austrailia");
      } 
  }
}