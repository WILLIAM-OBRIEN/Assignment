class stage
{
  void stage0()
  {
    if(letters<1)
    {
      background(0);
    }
    Atext.introText();
    if(keyPressed==true)
    {
      gamestate=1;
    }
  }
  
  void stage1()
  {
     background(0);
    fill(100);
    noStroke();
    rect(50,500,width-100,50);
    rect(0,0,5,650);
    rect(995,0,5,650);
    quad(0,650,50,650,50,500,0,400);
    quad(1000,650,950,650,950,500,1000,400);
    arc(500, 0, 1080, 100, 0, PI, CHORD);
    //keyboard bit
    fill(255);
    rect(50,550,width-100,100);
    //toolbar bit
    fill(0,255,0,50);
    stroke(0, 255, 0);
    rect(895,100,100,300,10);    
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);

    float intensityChange = 255.0f / trailLength;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      float lineTheta = theta - (i * speed);
      stroke(0, 255 - (i * intensityChange), 0);
      float x = cx + sin(lineTheta) * radius;
      float y = cy - cos(lineTheta) * radius;
      line(cx, cy, x, y);
    }
    theta += speed;
  }
  
  void stage2()
  {
    background(#11A7F0);
    cursor(CROSS);
    //start update
    update.europe(mouseX, mouseY);
    update.asia(mouseX, mouseY);
    update.america(mouseX, mouseY);
    update.americaS(mouseX, mouseY);
    update.africa(mouseX, mouseY);
    update.straya(mouseX, mouseY);
    //end update --- this part checks to see if the mouse is over any of the buttons when clicking or for the hover function
    
    //start interact
    if(europeOnly==1 || showAll==1)
    {
      image(europe, 100, 100);
      if(europeCircle==true || europeCounter==1)
      {
        image(REDeurope, 100, 100);
        if(europeCounter==1)
        {
          field.europeField();
        }
        else
        {
          alpha=1;
        }
      }
    }//end europe
    if(asiaOnly==1 || showAll==1)
    {
      image(asia, 100, 100);
      if(asiaCircle==true || asiaCounter==1)
      {
        image(REDasia, 100, 100);
        if(asiaCounter==1)
        {
          field.asiaField();
        }
        else
        {
          alpha=1;
        }
      }
    }//end asia
    if(americaOnly==1 || showAll==1)
    {
      image(america, 100, 100);
      if(americaCircle==true || americaCounter==1)
      {
        image(REDamerica, 100, 100);
        if(americaCounter==1)
        {
          field.americaField();
        }
        else
        {
          alpha=1;
        }
      }
    }//end america
    if(americaSOnly==1 || showAll==1)
    {
      image(americaS, 100, 100);
      if(americaSCircle==true || americaSCounter==1)
      {
        image(REDamericaS, 100, 100);
        if(americaSCounter==1)
        {
          field.americaSField();
        }
        else
        {
          alpha=1;
        }
      }
    }//end south america
    if(africaOnly==1 || showAll==1)
    {
      image(africa, 100, 100);
      if(africaCircle==true || africaCounter==1)
      {
        image(REDafrica, 100, 100);
        if(africaCounter==1)
        {
          field.africaField();
        }
        else
        {
          alpha=1;
        }
      }
    }//end africa
    if(strayaOnly==1 || showAll==1)
    {
      image(straya, 100, 100);
      if(strayaCircle==true || strayaCounter==1)
      {
        image(REDstraya, 100, 100);
        if(strayaCounter==1)
        {
          field.strayaField();
        }
        else
        {
          alpha=1;
        }
      }
    }//end austrailia
    //end interact --- this section allows for visual with the continents and text fields such as when your cursor hovers over a button the corresponding continent -->
    // --> is highlighted
    
    //start buttons
    //--------------------EUROPE BUTTON
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
    //--------------------ASIA BUTTON
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
    //--------------------AMERICA BUTTON
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
    //--------------------SOUTH AMERICA BUTTON
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
    //--------------------AFRICA BUTTON
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
    //--------------------AUSTRAILIA BUTTON
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
    //end buttons --- the buttons section is what allows gives the visuals for the buttons such as the filling color with hover and clicking
    
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
    //text end --- This part is only used to display text above the buttons for the different continents
  }
}