class mouseclick
{
  void europeClick()
  {
      if(europeCounter==0) 
      {
        europeCounter++;  
        println("Europe");
      } 
      else
      {
        europeCounter--;
        println("No Europe");
      }
  }
  
  void asiaClick()
  {
      if(asiaCounter==0) 
      {
        asiaCounter++; 
        println("Asia");
      } 
      else
      {
        asiaCounter--;
        println("No Asia");
      }
  }
  void americaClick()
  {
      if(americaCounter==0) 
      {
        americaCounter++; 
        println("America");
      } 
      else
      {
        americaCounter--;
        println("No America");
      }
  }
}