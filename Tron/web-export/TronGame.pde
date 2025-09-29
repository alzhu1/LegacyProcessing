//Alexander Zhu, TronGame, Computer Programming Block 8
//https://googledrive.com/host/0B2nKLg2SZJaTdmtKLWRCMWN4b28/index.html

int x=50;
int y=250;
int direction=RIGHT;
int compX=450;
int compY=250;
int compDir = LEFT;
int dotSize = 2;
boolean gameOver=false;
void setup()
{
  size(500, 500);
  background(0);
  frameRate(50);
  println("W, A, S, D change the direction of the white trail.");
}
void draw()
{
  if (gameOver == true)
  {
    fill(0, 255, 0);
    textAlign(CENTER);
    textSize(50);
    text("Game Over!", 250, 250);
  } else
  {
    human();
    computer();
  }
}
void human()
{
  if (get(x, y) != color(0))
  {
    fill(255, 0, 0);
    textAlign(CENTER);
    textSize(50);
    gameOver = true;
    text("Computer Wins!\nENTER=RESTART", 250, 300);
  } 
  {  
    stroke(255);
    fill(255);
    rect(x, y, dotSize-1, dotSize-1);
    if (direction == RIGHT)
    {
      x=x+dotSize;
    }
    if (direction == LEFT)
    {
      x=x-dotSize;
    }
    if (direction == UP)
    {
      y=y-dotSize;
    }
    if (direction == DOWN)
    {
      y=y+dotSize;
    }
  }
}
void computer()
{
  if (get(compX, compY) != color(0))
  {
    fill(255);
    textAlign(CENTER);
    textSize(50);
    gameOver = true;
    text("Player Wins!\nENTER=RESTART", 250, 300);
  }
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    rect(compX, compY, dotSize-1, dotSize-1);
    if (compDir == LEFT)
    {
      compX=compX-dotSize;
      if (get(compX-dotSize, compY) != color(0))
      {
        if (get(compX, compY-dotSize) != color(0))
        {
          compDir=DOWN;
        } else if (get(compX, compY+dotSize) != color(0))
        {
          compDir=UP;
        } else
        {
          if (random(1)<.5)
          {
            compDir=DOWN;
          } else
          {
            compDir=UP;
          }
        }
      }
    } else if (compDir == RIGHT)
    {
      compX=compX+dotSize;
      if (get(compX+dotSize, compY) != color(0))
      {
        if (get(compX, compY+dotSize) != color(0))
        {
          compDir=UP;
        } else if (get(compX, compY-dotSize) != color(0))
        {
          compDir=DOWN;
        } else
        {
          if (random(1) < .5)
          {
            compDir=UP;
          } else
          {
            compDir=DOWN;
          }
        }
      }
    } else if (compDir == UP)
    {
      compY=compY-dotSize;
      if (get(compX, compY-dotSize) != color(0))
      {
        if (get(compX+dotSize, compY) != color(0))
        {
          compDir=LEFT;
        } else if (get(compX-dotSize, compY) != color(0))
        {
          compDir=RIGHT;
        } else
        {
          if (random(1) < .5)
          {
            compDir=LEFT;
          } else
          {
            compDir=RIGHT;
          }
        }
      }
    } else if (compDir == DOWN)
    {
      compY=compY+dotSize;
      if (get(compX, compY+dotSize) != color(0))
      {
        {
          if (get(compX+dotSize, compY) != color(0))
          {
            compDir=LEFT;
          } else if (get(compX-dotSize, compY) != color(0))
          {
            compDir=RIGHT;
          } else
          {
            if (random(1) <.5)
            {
              compDir=RIGHT;
            } else
            {
              compDir=LEFT;
            }
          }
        }
      }
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
  if (key== ENTER && gameOver==true)
  {
    background(0);
    x=50;
    y=250;
    direction=RIGHT;
    compX=450;
    compY=250;
    compDir = LEFT;
    dotSize = 2;
    gameOver=false;
  }
}


