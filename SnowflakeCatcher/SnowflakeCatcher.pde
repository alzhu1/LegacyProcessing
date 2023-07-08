Snowflake[] jeffers;
void setup()
{
  //your code here
  size(500,500);
  jeffers = new Snowflake[50];
  for(int i=0; i<jeffers.length; i++)
  {
    jeffers[i] = new Snowflake();
  }
  background(0);
  textAlign(CENTER);
}
void draw()
{
  //your code here
  for(int j=0; j<jeffers.length; j++)
  {
    jeffers[j].erase();
    jeffers[j].lookDown();
    jeffers[j].move();
    jeffers[j].wrap();
    jeffers[j].show();
  }
}
void mouseDragged()
{
  //your code here
  stroke(255,0,0);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

class Snowflake
{
  //class member variable declarations
  int snowX,snowY;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    snowX=(int)(Math.random()*501);
    snowY=(int)(Math.random()*501);
    isMoving=true;
  }
  void show()
  {
    //your code here
    fill(255);
    stroke(0);
    ellipse(snowX,snowY,5,5);
  }
  void lookDown()
  {
    //your code here
    if(snowY<=499 && snowY>=0)
    {
      if(get(snowX,snowY+5) != color(0))
      {
        isMoving=false;
      }
      else
      {
        isMoving=true;
      } 
    }
  }
  void erase()
  {
    //your code here
    fill(0);
    stroke(0);
    ellipse(snowX,snowY,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving)
    {
      snowY=snowY+1;
    }
    else 
    {
    }
  }
  void wrap()
  {
    //your code here
    if(snowY>489)
    {
      snowX=(int)(Math.random()*501);
      snowY=0;
    }
  }
}
void keyPressed()
{
  if(key == 'r')
  {
    background(0);
    for(int j=0; j<jeffers.length; j++)
    {
      jeffers[j].snowX=(int)(Math.random()*501);
      jeffers[j].snowY=(int)(Math.random()*501);
    }
  }
}

