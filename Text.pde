class Atext
{
  String opening = ("Greetings Commander,\nWe are sending you to the planet of earth\nWe are hoping that you can find more about the planet\nThere are 6 main regions on this planet:\nEurope, Asia, America, South America, Africa and Austrailia\n\n\n                                               PRESS ANY KEY\n\n\n\nPlease come back to us when you have learned something!!");
  void introText()
  {
    if (letters < opening.length())
    {
      letters++;
      text(opening.substring(0, letters), 0,40, width, height);    
    }
  }
  void europeText()
  {
    fill(0,alpha);
    text("Population:\n743,000,000", 100, 100);
  }
  void asiaText()
  {
    fill(0,alpha);
    text("Population:\n4,400,000,000", 100, 100);
  }
  void americaText()
  {
    fill(0,alpha);
    text("Population: 579,000,000", 500, 100);
  }
  void americaSText()
  {
    fill(0,alpha);
    text("Population: 422,000,000", 500, 100);
  }
  void africaText()
  {
    fill(0,alpha);
    text("Population:\n1,200,000,000", 100, 100);
  }
  void strayaText()
  {
    fill(0,alpha);
   text("Population: 38,000,000", 100, 100);
  }
}