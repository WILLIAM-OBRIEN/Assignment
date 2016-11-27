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
    textFont(font, 20);
    text("Population:\n743,000,000", 100, 100);
    text("VERDICT",740,100);
    textFont(font2, 20);
    text("Consists of 2 smaller island \nnations isolated for their \ndifferent racial views and \na larger main land which all \ncan't decide on what language \nto speak. This colony is led by \nthe man known as 'pope'.All \nattempts at finding popes \nlocation as been met with \nridicules.Will press further for \nmore.",80,200);
    text("Would not recommend for \ncolonisation due to the varied \npopulation and being found to \nbe really aggressive/loud in the \nisland nations at night usually \naround the major cities.",670,150);
  }
  void asiaText()
  {
    fill(0,alpha);
    textFont(font, 20);
    text("Population:\n4,400,000,000", 100, 100);
    text("VERDICT",200,300);
    textFont(font2, 20);
    text("A strange part of the mainland where \nnothing makes sense, with a small coastal \nisland where even less makes sense.",80,200);
    text("I would recommend colonisation as there is \nso many people here it probably wouldn't be \nnoticed.",80,350);
  }
  void americaText()
  {
    fill(0,alpha);
    textFont(font, 20);
    text("Population: 579,000,000", 500, 100);
    text("VERDICT",610,300);
    textFont(font2, 20);
    text("A confusing set of nations focused with a culture on being the \nmost spherical in shape. Recently two tribes competed for \ncontrol, the orange skins and pink skins. The orange man \nhas won this conquest which seemingly has brought the \ndestruction of the region.", 420, 150);
    text("Would not recommend for colonisation due to the imminent \nthreat of destruction as well as the large appetite of the \npopulation.",420,350);
  }
  void americaSText()
  {
    fill(0,alpha);
    textFont(font, 20);
    text("Population: 422,000,000", 500, 100);
    text("VERDICT",610,300);
    textFont(font2, 20);
    text("A naturist colony with many members not in touch with their \nnature at all. Recently a form of bloodsports was held here \nwhere each nations best compete for shiny medallions. \nJudging by the reactions of those who did not win will be \nexecuted when they return to their homeland.",420,150);
    text("I would recommend for colonisation as there seems to be a \nmutual respect with our species, even bestowing me the title \n'gringo'.",420,350);
  }
  void africaText()
  {
    fill(0,alpha);
    textFont(font, 20);
    text("Population:\n1,200,000,000", 100, 100);
    text("VERDICT",740,100);
    textFont(font2, 20);
    text("A human colony under \nconstant war with the \n'mozzkeetos'.This war has \ncaused the region to be \nunderdeveloped and has \ntaken the life of their leader \nNelson Mandela.",80,200);
    text("If the humans cant beat the \nmozzkeetos I don't think this \nplace would be ideal colony \nground, perhaps an alliance \nwith the mozzkeetos is an \noption?",670,150);
  }
  void strayaText()
  {
    fill(0,alpha);
   text("Population: 38,000,000", 100, 100);
  }
}