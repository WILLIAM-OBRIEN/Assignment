Circle Button;

hover update;
mouseclick press;

PImage europe;
PImage REDeurope;
PImage asia;
PImage REDasia;
PImage america;
PImage REDamerica;
PImage americaS;
PImage africa;
PImage straya;

color circle_inside =color(0,255,0);
color circle_outline =color(0,255,0);

boolean europeCircle=false;
boolean asiaCircle=false;
boolean americaCircle=false;

int europeCounter=0;
int asiaCounter=0;
int americaCounter=0;

int circleX=100,circleY=600;
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
  africa = loadImage("africa.png");
  straya = loadImage("straya.png");
  
  update = new hover();
  press = new mouseclick();
  Button= new Circle();
}

void draw() 
{
  background(#11A7F0);
  cursor(CROSS);
  update.europe(mouseX, mouseY);
  update.asia(mouseX, mouseY);
  update.america(mouseX, mouseY);
  image(europe, 100, 100);
  if(europeCircle==true || europeCounter==1)
  {
    image(REDeurope, 100, 100);
  }
  image(asia, 100, 100);
  if(asiaCircle==true || asiaCounter==1)
  {
    image(REDasia, 100, 100);
  } 
  image(america, 100, 100);
  if(americaCircle==true || americaCounter==1)
  {
    image(REDamerica, 100, 100);
  }
  image(americaS, 100, 100);
  image(africa, 100, 100);
  image(straya, 100, 100);
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
  
  //text start
  fill(0);
  text("Europe",circleX-45,circleY-45);
  text("Asia",circleX+115,circleY-45);
  text("America",circleX+240,circleY-45);
}

void mousePressed() 
{
  if (europeCircle)
  {
    press.europeClick();
  }
  else if (asiaCircle)
  {
    press.asiaClick();
  }
  else if (americaCircle)
  {
    press.americaClick();
  }
}