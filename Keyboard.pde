class keyboard
{
  void keyboard()
  {
    
    stroke(255);
    noFill();
    r=50;
    for(i=1;i<19;i++)
    {
      update.keypress(mouseX,mouseY);
      if(key[i])
      {
        fill(0,255,255);
      }
      else
      {
        fill(0);
      }
      rect(r,550,50,50);
      r=r+(50);
    }//prints top line of keyboard keys
    
    r=50;
    for(i=1;i<19;i++)
    {
      update.keypress2(mouseX,mouseY);
      if(key[i])
      {
        fill(0,255,255);
      }
      else
      {
        fill(0);
      }
      rect(r,600,50,50);
      r=r+(50);
    }//prints bottom line of keyboard keys
  }
  void keys()
  {  
    fill(255);
    text("Q",65,590);
    text("W",115,590);
    text("E",165,590);
    text("R",215,590);
    text("T",265,590);
    text("Y",315,590);
    text("U",365,590);
    text("I",425,590);
    text("O",465,590);
    text("P",515,590);
    text("A",565,590);
    text("S",615,590);
    text("D",665,590);
    text("[",715,590);
    text("]",765,590);
    text(";",820,590);
    text("#",865,590);
    text("!",915,590);
    
    text("F",65,640);
    text("G",115,640);
    text("H",165,640);
    text("J",215,640);
    text("K",265,640);
    text("L",315,640);
    text("Z",365,640);
    text("X",415,640);
    text("C",465,640);
    text("V",515,640);
    text("B",565,640);
    text("N",615,640);
    text("M",665,640);
    text(":",725,640);
    text("?",765,640);
    text("_",820,640);
    text("|",865,640);
    text("$",915,640);
    
  }//prints letters in the keys for keyboard
}//end class keyboard