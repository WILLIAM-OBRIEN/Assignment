class textfield
{
  //functions display background text space 
  void europeField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 300, 430,30);
    rect(650, 50, 300, 430,30);
    Atext.europeText();
    alpha+=3;
  }//end europeField
  
  void asiaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 430, 430,30);
    Atext.asiaText();
    alpha+=3;
  }//end asiaField
  
  void americaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(400, 50, 550, 430,30); 
    Atext.americaText();
    alpha+=3;
  }//end americaField
  
  void americaSField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(400, 50, 550, 430,30);
    Atext.americaSText();
    alpha+=3;
  }//end americaSField
  
  void africaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 300, 430,30);
    rect(650, 50, 300, 430,30);
    Atext.africaText();
    alpha+=3; 
  }//end africaField
  void strayaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 650, 430,30);
    Atext.strayaText();
    alpha+=3;
  }//end strayaField
}//end class textfield