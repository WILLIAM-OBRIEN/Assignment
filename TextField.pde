class textfield
{
  void europeField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 300, 430,30);
    rect(650, 50, 300, 430,30);
    Atext.europeText();
    alpha+=3;
  }
  void asiaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 430, 430,30);
    Atext.asiaText();
    alpha+=3;
  }
  void americaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(400, 50, 550, 430,30); 
    Atext.americaText();
    alpha+=3;
  }
  void americaSField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(400, 50, 550, 430,30);
    Atext.americaSText();
    alpha+=3;
  }
  void africaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 300, 430,30);
    rect(650, 50, 300, 430,30);
    Atext.africaText();
    alpha+=3; 
  }
  void strayaField()
  {
    noStroke();
    fill(255,222,196,alpha);
    rect(50, 50, 650, 430,30);
    Atext.strayaText();
    alpha+=3;
  }
}