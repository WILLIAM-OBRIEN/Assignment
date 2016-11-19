Circle europeButton;

hover update;
mouseclick press;

PImage europe;
PImage REDeurope;
PImage asia;
PImage america;
PImage americaS;
PImage africa;
PImage straya;

color circle_inside =color(0,255,0);
color circle_outline =color(0,255,0);

boolean europeCircle=false;

int europeCounter=0;

int circleX=100,circleY=550;
int circleSize=70;

void setup() 
{
  size(1000,600);
  //europe
  europe = loadImage("europe.png");
  REDeurope = loadImage("REDeurope.png");
  //asia
  asia = loadImage("asia.png");
  america = loadImage("america.png");
  americaS = loadImage("americaS.png");
  africa = loadImage("africa.png");
  straya = loadImage("straya.png");
  
  update = new hover();
  press = new mouseclick();
  europeButton= new Circle();
}

void draw() 
{
  background(#11A7F0);
  cursor(CROSS);
  update.europe(mouseX, mouseY);
  image(europe, 100, 100);
  if(europeCircle==true || europeCounter==1)
  {
    image(REDeurope, 100, 100);
  }   
  image(asia, 100, 100);
  image(america, 100, 100);
  image(americaS, 100, 100);
  image(africa, 100, 100);
  image(straya, 100, 100);
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
}

void mouseClicked() 
{
  if (europeCircle)
  {
    press.europeClick();
  }
}