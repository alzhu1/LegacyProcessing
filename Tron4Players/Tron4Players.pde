int x=25;
int y=25;
int direction=RIGHT;
int secondX=25;
int secondY=475;
int secondDir=UP;
int thirdX=475;
int thirdY=475;
int thirdDir=LEFT;
int fourthX=475;
int fourthY=25;
int fourthDir=DOWN;
boolean player1=true;
boolean player2=true;
boolean player3=true;
boolean player4=true;
boolean ggp1=false;
boolean ggp2=false;
boolean ggp3=false;
boolean ggp4=false;
boolean gameOver=false;
void setup()
{
  size(500, 500);
  background(0);
  frameRate(60);
  smooth();
}
void draw()
{
  if (ggp2==true && ggp3==true && ggp4==true)
  {
    fill(255);
    textSize(40);
    textAlign(CENTER);
    gameOver=true;
    text("Player 1 Wins!\n Press ENTER to restart.", 250, 255);
    player1=false;
  } else if (ggp1==true && ggp3==true && ggp4==true)
  {
    fill(255, 0, 0);
    textSize(40);
    textAlign(CENTER);
    gameOver=true;
    text("Player 2 Wins!\n Press ENTER to restart.", 250, 255);
    player2=false;
  } else if (ggp1==true && ggp2==true && ggp4==true)
  {
    fill(0, 255, 0);
    textSize(40);
    textAlign(CENTER);
    gameOver=true;
    text("Player 3 Wins!\n Press ENTER to restart.", 250, 255);
    player3=false;
  } else if (ggp1==true && ggp2==true && ggp3==true)
  {
    fill(0, 75, 255);
    textSize(40);
    textAlign(CENTER);
    gameOver=true;
    text("Player 4 Wins!\n Press ENTER to restart.", 250, 255);
    player4=false;
  }
  if (gameOver == true)
  {
    text("Game Over!", 250, 200);
  }
  if (player1==true)
  {
    human();
  }
  if (player2==true)
  {
    secondguy();
  }
  if (player3==true)
  {
    thirdguy();
  }
  if (player4==true)
  {
    fourthguy();
  }
}
void human()
{
  if (get(x, y) != color(0))
  {
    ggp1=true;
    player1=false;
  } 
  {  
    stroke(255);
    fill(255);
    rect(x, y, 1, 1);
    if (direction == LEFT)
    {
      x=x-2;
    }
    if (direction == RIGHT)
    {
      x=x+2;
    }
    if (direction == UP)
    {
      y=y-2;
    }
    if (direction == DOWN)
    {
      y=y+2;
    }
  }
}
void secondguy()
{
  if (get(secondX, secondY) != color(0))
  {
    ggp2=true;
    player2=false;
  }
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    rect(secondX, secondY, 1, 1);
    if (secondDir == LEFT)
    {
      secondX=secondX-2;
    } else if (secondDir == RIGHT)
    {
      secondX=secondX+2;
    } else if (secondDir == UP)
    {
      secondY=secondY-2;
    } else if (secondDir == DOWN)
    {
      secondY=secondY+2;
    }
  }
}
void thirdguy()
{
  if (get(thirdX, thirdY) != color(0))
  {
    ggp3=true;
    player3=false;
  }
  {
    stroke(0, 255, 0);
    fill(0, 255, 0);
    rect(thirdX, thirdY, 1, 1);
    if (thirdDir == LEFT)
    {
      thirdX=thirdX-2;
    } else if (thirdDir == RIGHT)
    {
      thirdX=thirdX+2;
    } else if (thirdDir == UP)
    {
      thirdY=thirdY-2;
    } else if (thirdDir == DOWN)
    {
      thirdY=thirdY+2;
    }
  }
}
void fourthguy()
{
  if (get(fourthX, fourthY) != color(0))
  {
    ggp4=true;
    player4=false;
  }
  {
    stroke(0, 75, 255);
    fill(0, 0, 255);
    rect(fourthX, fourthY, 1, 1);
    if (fourthDir == LEFT)
    {
      fourthX=fourthX-2;
    } else if (fourthDir == RIGHT)
    {
      fourthX=fourthX+2;
    } else if (fourthDir == UP)
    {
      fourthY=fourthY-2;
    } else if (fourthDir == DOWN)
    {
      fourthY=fourthY+2;
    }
  }
}


void keyPressed()
{
  if (key == 'w')
  {
    direction = UP;
  } else if (key == 'a')
  {
    direction = LEFT;
  } else if (key == 's')
  {
    direction = DOWN;
  } else if (key == 'd')
  {
    direction = RIGHT;
  }
  if (key == 'i')
  {
    secondDir=UP;
  } else if (key == 'j')
  {
    secondDir = LEFT;
  } else if (key == 'k')
  {
    secondDir = DOWN;
  } else if (key == 'l')
  {
    secondDir = RIGHT;
  }
  if (key== CODED)
  {
    if (keyCode == UP)
    {
      thirdDir=UP;
    } else if (keyCode == LEFT)
    {
      thirdDir = LEFT;
    } else if (keyCode == DOWN)
    {
      thirdDir = DOWN;
    } else if (keyCode == RIGHT)
    {
      thirdDir = RIGHT;
    }
  }
  if (key == '8')
  {
    fourthDir=UP;
  } else if (key == '4')
  {
    fourthDir=LEFT;
  } else if (key == '5')
  {
    fourthDir=DOWN;
  } else if (key=='6')
  {
    fourthDir=RIGHT;
  }
  if (key==ENTER && gameOver==true)
  {
    background(0);
    x=25;
    y=25;
    direction=RIGHT;
    secondX=25;
    secondY=475;
    secondDir=UP;
    thirdX=475;
    thirdY=475;
    thirdDir=LEFT;
    fourthX=475;
    fourthY=25;
    fourthDir=DOWN;
    player1=true;
    player2=true;
    player3=true;
    player4=true;
    ggp1=false;
    ggp2=false;
    ggp3=false;
    ggp4=false;
    gameOver=false;
  }
}

