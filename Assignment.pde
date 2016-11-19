PImage europe;
PImage REDeurope;
PImage asia;
PImage america;
PImage americaS;
PImage africa;
PImage straya;

void setup() 
{
  size(1000,600);
  europe = loadImage("europe.png");
  REDeurope = loadImage("REDeurope.png");
  asia = loadImage("asia.png");
  america = loadImage("america.png");
  americaS = loadImage("americaS.png");
  africa = loadImage("africa.png");
  straya = loadImage("straya.png");
}

void draw() 
{
  background(#11A7F0);
  cursor(CROSS);
  println(mouseX,mouseY);
  image(europe, 100, 100);
    //image(REDeurope, 100, 100);
  image(asia, 100, 100);
  image(america, 100, 100);
  image(americaS, 100, 100);
  image(africa, 100, 100);
  image(straya, 100, 100);
  
  rect(450,500,100,100);
}

void mousePressed() 
{
  if (mouseX < 550 && mouseY < 600 && mouseX > 450 && mouseY > 500)
  {
    fill(0);
  }
}