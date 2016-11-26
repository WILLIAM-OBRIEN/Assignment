Circle button;
rectangle box;
hover update;
mouseclick press;
textfield field;
Atext Atext;
stage stage;
sinewave sin;
keyboard board;

PImage europe;
PImage asia, REDasia;
PImage america;
PImage americaS;
PImage africa;
PImage straya;
PImage earth;
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
boolean backCircle=false;
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
PFont font;
int letters;
int i=0;

int circleX=130,circleY=600;
int circleSize=70;

//radar variables
float speed = 0.02;
int trailLength = 50;  
float theta = 0;
float cx=950, cy=150;
color c = color(0, 255, 0);
float radius = 30;

//arc spin variables
int px = 945;
int py = 250; //px and py are the starting center/reference point of arcs
int lar = 50;
int alt = 50; //width/height of arc
int ang = 1;
int ang2 = 1;
int ang3 = 1;//angles used for rotation of the arcs

//sinewave vaiables
float  posY, WaveHeight = 20, variationY,  temps = 0, WaveSpeed, completeCycle ;//position of y start point,height of wave,main cause of moving ellipse,2 variables that effect speed,where the furthest most ellipse will end 
int startX = 910, endX = 990, gap=1, distanceX;//starting x coordinate,end x coordinate,effects space between ellipses,distanceX used to measure distance between start and end X coordinates

//keyboard vaiables
int r=50;
boolean[] key = new boolean[36];

int stars=1;
float[] xPos = new float[250];
float[] yPos = new float[250];
float[] xVel = new float[250];
float[] yVel = new float[250];
float[] s = new float[250]; 

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
  //asia
  asia = loadImage("asia.png");
  //america
  america = loadImage("america.png");
  //south america
  americaS = loadImage("americaS.png");
  //africa
  africa = loadImage("africa.png");
  //austrailia
  straya = loadImage("straya.png");
  //globe of earth
  earth=loadImage("earth.png");
  
  //makes stars random generated and places them in an array
  for (int i=0; i < 250; i++) 
  {
    xPos[i] = random(1, 1000);
  }

  for (int i=0; i < 250; i++) 
  {
    yPos[i] = random(1, 649);
  }

  for (int i=0; i < 250; i++) 
  {
    xVel[i] = random(-10, 10);
  }

  for (int i=0; i < 250; i++) 
  {
    yVel[i] = random(-10, 10);
  }
  for (int i=0; i < 250; i++) 
  {
    s[i] = random(1, 6);
  }
  
  //variables that connect the different classes
  update = new hover();
  press = new mouseclick();
  button= new Circle();
  box = new rectangle();
  field = new textfield();
  Atext = new Atext();
  stage = new stage();
  board = new keyboard();
  sin = new sinewave();
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
    if (backCircle)
    {
      gamestate=1;
      println("GameState 1");
      backCircle=false;
    }
    println(mouseX,mouseY);
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