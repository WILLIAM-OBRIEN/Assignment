Circle button;
hover update;
mouseclick press;
textfield field;
Atext Atext;
stage stage;

PImage europe, REDeurope;
PImage asia, REDasia;
PImage america, REDamerica;
PImage americaS, REDamericaS;
PImage africa, REDafrica;
PImage straya, REDstraya;

color circle_inside =color(0,255,0);
color circle_outline =color(0,255,0);
int alpha=1;

boolean earthCircle=false;
boolean europeCircle=false;
boolean asiaCircle=false;
boolean americaCircle=false;
boolean americaSCircle=false;
boolean africaCircle=false;
boolean strayaCircle=false;
boolean exitCircle=false;

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

int gamestate=0;
String opening = ("Greetings Commander,\nWe are sending you to the planet of earth\nWe are hoping that you can find more about the planet\nThere are 6 main regions on this planet:\nEurope, Asia, America, South America, Africa and Austrailia\n\n\n                                               PRESS ANY KEY\n\n\n\nPlease come back to us when you have learned something!!");
PFont font;
int letters;

int circleX=130,circleY=600;
int circleSize=70;

//radar variables
float speed = 0.02;
int trailLength = 50;  
float theta = 0;
float cx=950, cy=150;
color c = color(0, 255, 0);
float radius = 30;

void setup() 
{
  size(1000,650);
  textSize(32);
  strokeWeight(3);
  smooth();
  font = createFont("Pixeled.ttf",48);
  textFont(font, 20);
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
  field = new textfield();
  Atext = new Atext();
  stage = new stage();
}

void draw() 
{
  if(gamestate==0)
  {
    stage.stage0();
  }
  else if(gamestate==1)
  {
    stage.stage1();
  }
  else if(gamestate==2)
  {
    stage.stage2();
  }
}

void mousePressed() 
{
  if(mouseButton==LEFT)
  {
    if(gamestate==1)
    {
      if (earthCircle)
      {
        press.earthClick();
      }
    }
    
    if(gamestate==2)
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
      else if (exitCircle )
      {
        exit();
      }
    }
  }//if user presses mouse on the continents buttons this will allow for a reaction by calling to 'mouseclick class'
  
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
    println("Reset");
  }//this is the reset which will bring you back to global view
}//if user presses right or left mouse button, left is used to interact with buttons and right used to go back to global map/reset

void keyPressed() 
{
  if (keyCode==ESC) 
  {
    exit();
  }
}//allows user to exit program at any time by pressing 'escape key'