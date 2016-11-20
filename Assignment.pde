Circle button;
hover update;
mouseclick press;

PImage europe, REDeurope;
PImage asia, REDasia;
PImage america, REDamerica;
PImage americaS, REDamericaS;
PImage africa, REDafrica;
PImage straya, REDstraya;

color circle_inside =color(0,255,0);
color circle_outline =color(0,255,0);

boolean europeCircle=false;
boolean asiaCircle=false;
boolean americaCircle=false;
boolean americaSCircle=false;
boolean africaCircle=false;
boolean strayaCircle=false;

int europeCounter=0;
int asiaCounter=0;
int americaCounter=0;
int americaSCounter=0;
int africaCounter=0;
int strayaCounter=0;

int showAll=1;
int europeOnly=0;
int asiaOnly=0;
int americaOnly=0;
int americaSOnly=0;
int africaOnly=0;
int strayaOnly=0;

int interact=1;

int circleX=130,circleY=600;
int circleSize=70;

void setup() 
{
  size(1000,650);
  textSize(32);
  strokeWeight(3);
  //europe
  europe = loadImage("europe.png");
  REDeurope = loadImage("REDeurope.png");
  //asia
  asia = loadImage("asia.png");
  REDasia = loadImage("REDasia.png");
  //america
  america = loadImage("america.png");
  REDamerica = loadImage("REDamerica.png");
  //south america
  americaS = loadImage("americaS.png");
  REDamericaS = loadImage("REDamericaS.png");
  //africa
  africa = loadImage("africa.png");
  REDafrica = loadImage("REDafrica.png");
  //austrailia
  straya = loadImage("straya.png");
  REDstraya = loadImage("REDstraya.png");
  
  update = new hover();
  press = new mouseclick();
  button= new Circle();
}

void draw() 
{
  background(#11A7F0);
  cursor(CROSS);
  update.europe(mouseX, mouseY);
  update.asia(mouseX, mouseY);
  update.america(mouseX, mouseY);
  update.americaS(mouseX, mouseY);
  update.africa(mouseX, mouseY);
  update.straya(mouseX, mouseY);
  if(europeOnly==1 || showAll==1)
  {
    image(europe, 100, 100);
    if(europeCircle==true || europeCounter==1)
    {
      image(REDeurope, 100, 100);
    }
  }//end if
  if(asiaOnly==1 || showAll==1)
  {
    image(asia, 100, 100);
    if(asiaCircle==true || asiaCounter==1)
    {
      image(REDasia, 100, 100);
    }
  }//end if
  if(americaOnly==1 || showAll==1)
  {
    image(america, 100, 100);
    if(americaCircle==true || americaCounter==1)
    {
      image(REDamerica, 100, 100);
    }
  }//end if
  if(americaSOnly==1 || showAll==1)
  {
    image(americaS, 100, 100);
    if(americaSCircle==true || americaSCounter==1)
    {
      image(REDamericaS, 100, 100);
    }
  }//end if
  if(africaOnly==1 || showAll==1)
  {
    image(africa, 100, 100);
    if(africaCircle==true || africaCounter==1)
    {
      image(REDafrica, 100, 100);
    }
  }//end if
  if(strayaOnly==1 || showAll==1)
  {
    image(straya, 100, 100);
    if(strayaCircle==true || strayaCounter==1)
    {
      image(REDstraya, 100, 100);
    }
  }//end if
  //--------------------EUROPE
  if (europeCircle) 
  {
    fill(circle_inside);
    stroke(circle_outline);
  } 
  else 
  {
    noFill();
    stroke(255);
  }
  if(europeCounter>0){fill(circle_inside);stroke(circle_outline);}
  ellipse(circleX, circleY, circleSize, circleSize);
  //--------------------ASIA
  if (asiaCircle) 
  {
    fill(circle_inside);
    stroke(circle_outline);
  } 
  else 
  {
    noFill();
    stroke(255);
  }
  if(asiaCounter>0){fill(circle_inside);stroke(circle_outline);}
  ellipse(circleX+150, circleY, circleSize, circleSize); 
  //--------------------AMERICA
  if (americaCircle) 
  {
    fill(circle_inside);
    stroke(circle_outline);
  } 
  else 
  {
    noFill();
    stroke(255);
  }
  if(americaCounter>0){fill(circle_inside);stroke(circle_outline);}
  ellipse(circleX+300, circleY, circleSize, circleSize);
  //--------------------SOUTH AMERICA
  if (americaSCircle) 
  {
    fill(circle_inside);
    stroke(circle_outline);
  } 
  else 
  {
    noFill();
    stroke(255);
  }
  if(americaSCounter>0){fill(circle_inside);stroke(circle_outline);}
  ellipse(circleX+450, circleY, circleSize, circleSize);
  //--------------------AFRICA
  if (africaCircle) 
  {
    fill(circle_inside);
    stroke(circle_outline);
  } 
  else 
  {
    noFill();
    stroke(255);
  }
  if(africaCounter>0){fill(circle_inside);stroke(circle_outline);}
  ellipse(circleX+600, circleY, circleSize, circleSize);
  //--------------------AUSTRAILIA
  if (strayaCircle) 
  {
    fill(circle_inside);
    stroke(circle_outline);
  } 
  else 
  {
    noFill();
    stroke(255);
  }
  if(strayaCounter>0){fill(circle_inside);stroke(circle_outline);}
  ellipse(circleX+750, circleY, circleSize, circleSize);
  
  //text start
  fill(0);
  text("Europe",circleX-50,circleY-45);
  text("Asia",circleX+115,circleY-45);
  text("North",circleX+260,circleY-75);
  text("America",circleX+240,circleY-45);
  text("South",circleX+410,circleY-75);
  text("America",circleX+390,circleY-45);
  text("Africa",circleX+555,circleY-45);
  text("Austrailia",circleX+685,circleY-45);
}

void mousePressed() 
{
  if(mouseButton==LEFT)
  {
    if (europeCircle && interact==1)
    {
      press.europeClick();
    }
    else if (asiaCircle && interact==1)
    {
      press.asiaClick();
    }
    else if (americaCircle && interact==1)
    {
      press.americaClick();
    }
    else if (americaSCircle && interact==1)
    {
      press.americaSClick();
    }
    else if (africaCircle && interact==1)
    {
      press.africaClick();
    }
    else if (strayaCircle && interact==1)
    {
      press.strayaClick();
    }
  }
  else if(mouseButton==RIGHT)
  {
    interact=1;
    showAll=1;
    europeOnly=0;
    asiaOnly=0;
    americaOnly=0;
    americaSOnly=0;
    africaOnly=0;
    strayaOnly=0;
    europeCounter=0;
    asiaCounter=0;
    americaCounter=0;
    americaSCounter=0;
    africaCounter=0;
    strayaCounter=0;
  }
}