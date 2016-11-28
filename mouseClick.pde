class mouseclick
{
  //function used to transition from stage 1 to stage 2 by clicking on the earth in stage 1
  void earthClick()
  {
      gamestate=2;
      println("GameState 2");
  }//end earthClick
  
  //functions used if user clicks on the buttons in the appropriate stage
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
  }//end europeClick
  
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
  }//end asiaClick
  
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
  }//end americaClick
  
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
  }//end americaSClick
  
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
  }//end africaClick
  
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
  }//end strayaClick
}//end class mouseclick