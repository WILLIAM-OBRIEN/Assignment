import processing.sound.*;

SoundFile select;
SoundFile deselect;
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
PImage asia;
PImage america;
PImage americaS;
PImage africa;
PImage straya;
PImage earth;
PFont font;

//used to color buttons used in stage 2 
color circle_inside =color(0,255,0);
color circle_outline =color(0,255,0);
int alpha=1;

//used to see if users cursor is over buttons
boolean earthCircle=false;
boolean europeCircle=false;
boolean asiaCircle=false;
boolean americaCircle=false;
boolean americaSCircle=false;
boolean africaCircle=false;
boolean strayaCircle=false;
boolean backCircle=false;
boolean exitCircle=false;

//to see if user has pressed a continent button
int europeCounter=0;
int asiaCounter=0;
int americaCounter=0;
int americaSCounter=0;
int africaCounter=0;
int strayaCounter=0;

//variables used to show all countries or single out a continent
int showAll=1;
int europeOnly=0;
int asiaOnly=0;
int americaOnly=0;
int americaSOnly=0;
int africaOnly=0;
int strayaOnly=0;

//decides if user can interact with buttons in stage 2 as otherwise multiple continents could be selected
int interact=1;

//decides what stage of the ui is being showed
int gamestate=0;

//variable used to give the 'typeout effect' of text in the opening paragraph, i.e. stage 0
int letters;
int i=0;

//size of continents buttons
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

//variables used to map stars in stage 1
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
  cursor(CROSS);
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
  
  //makes stars coordinates + size random generated and places the information in arrays
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
  select = new SoundFile(this,"select.wav");
  deselect = new SoundFile(this,"deselect.wav");
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
  }//the opening text stage
  else if(gamestate==1)
  {
    stage.stage1();
  }//the spaceship stage
  else if(gamestate==2)
  {
    stage.stage2();
  }//the global view stage
}//end draw 

void mousePressed() 
{
  if(mouseButton==LEFT)
  {
    if(gamestate==1)
    {
      if (earthCircle)
      {
        press.earthClick();
        select.play();
      }
    }//if user clicks on the earth will transition them to stage 2
    
    if(gamestate==2)
    {
      if (europeCircle && interact==1)
      {
        press.europeClick();
        select.play();
      }
      else if (asiaCircle && interact==1)
      {
        press.asiaClick();
        select.play();
      }
      else if (americaCircle && interact==1)
      {
        press.americaClick();
        select.play();
      }
      else if (americaSCircle && interact==1)
      {
        press.americaSClick();
        select.play();
      }
      else if (africaCircle && interact==1)
      {
        press.africaClick();
        select.play();
      }
      else if (strayaCircle && interact==1)
      {
        press.strayaClick();
        select.play();
      }
      else if (exitCircle )
      {
        exit();
      }//if user clicks will exit the program
    }
    if (backCircle)
    {
      gamestate=1;
      reset();
      println("GameState 1");
      backCircle=false;
    }
  }//if user clicks any of the buttons will carry out appropriate response with a sound cue
  
  else if(mouseButton==RIGHT && interact !=1)
  {
    if (gamestate==2)
    {
      reset();
    }
  }//this is the reset which will bring you back to global view
}//if user presses right or left mouse button, left is used to interact with buttons and right used to go back to global map/reset

void reset()
{
      deselect.play();
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
}
void keyPressed() 
{
  if (keyCode==ESC) 
  {
    exit();
  }
}//allows user to exit program at any time by pressing 'escape key'