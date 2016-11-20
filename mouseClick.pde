class mouseclick
{
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
      else
      {
        europeOnly=0;
        showAll=1;
        europeCounter--;
        println("No Europe");
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
      else
      {
        asiaOnly=0;
        showAll=1;
        asiaCounter--;
        println("No Asia");
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
      else
      {
        americaOnly=0;
        showAll=1;
        americaCounter--;
        println("No America");
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
      else
      {
        americaSOnly=0;
        showAll=1;
        americaSCounter--;
        println("No South America");
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
      else
      {
        africaOnly=0;
        showAll=1;
        africaCounter--;
        println("No Africa");
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
      else
      {
        strayaOnly=0;
        showAll=1;
        strayaCounter--;
        println("No Austrailia");
      }
  }
}