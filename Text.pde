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
}