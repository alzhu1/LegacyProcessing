//Alexander Zhu, Computer Programming Block 8, PongyPongPong

ball bob;
paddle joe;
paddle2 jeff;
barrier bro, bro2;
int p1score=0;
int p2score=0;
int time= 0;
int timer= 720;
boolean p1lose=false;
boolean p2lose=false;
void setup()
{
  bob= new ball();
  joe= new paddle();
  jeff= new paddle2();
  bro = new barrier();
  bro2= new barrier();
  bro2.a=10;
  bro2.c=485;
  bro2.filler1=252;
  bro2.filler2=252;
  size(500, 500);
  frameRate(240);
}
void draw()
{
  background(0);
  bro.leftbarrier();
  bro.rightbarrier();
  bro2.leftbarrier();
  bro2.rightbarrier();
  joe.keyPressed();
  joe.appear();
  jeff.mouseMoved();
  jeff.appear();
  if(time>=timer)
  {
  bob.move();
  }
  bob.bounce();
  bob.show();
  fill(255);
  textAlign(CENTER);
  textSize(25);
  text(p1score, 200, 30);
  text(p2score, 300, 30);
  textSize(50);
  if(time>=0 && time<=240)
  {
    text(3,250,50);
  }
  if(time>=240 && time<=480)
  {
    text(2,250,50);
  }
  if(time>=480 && time<=720)
  {
    text(1,250,50);
  }
  if (p1lose)
  {
    p2score++;
    p1lose=false;
    bro.filler1=253;
    bro.filler2=253;
    bro2.filler1=252;
    bro2.filler2=252;
  }
  if (p2lose)
  {
    p1score++;
    p2lose=false;
    bro.filler1=253;
    bro.filler2=253;
    bro2.filler1=252;
    bro2.filler2=252;
  }
  time++;
}
class ball
{
  int x, y;
  boolean up, right;
  ball()
  {
    x= int(random(240, 261));
    y= int(random(240, 261));
    up=random(1)<.5;
    right=random(1)<.5;
  }
  void move()
  {
    if (up)
    {
      y--;
    } else
    {
      y++;
    }
    if (right)
    {
      x++;
    } else
    {
      x--;
    }
  }
  void bounce()
  {
    if (x>510)
    {
      p2lose=true;
      bob=new ball();
      right=false;
      time=0;
      timer=720;
    }
    if (x<-10)
    {
      p1lose=true;
      bob=new ball();
      right=true;
      time=0;
      timer=720;
    }
    if (y>490 || get(x, y+11) == color(254))
    {
      up=true;
    }
    if (y<10 || get(x, y-11) == color(254))
    {
      up=false;
    }
    if (get(x-11, y) == color(254))
    {
      right=true;
      if(y<joe.a+35)
      {
        up=true;
      }
      if(y>joe.a+35 && y<joe.a+70)
      {
        up=false;
      }
    }
    if (get(x+11, y) == color(254))
    {
      right=false;
      if(y<jeff.b+35)
      {
        up=true;
      }
      if(y>jeff.b+35 && y<jeff.b+70)
      {
        up=false;
      }
    }
    if (get(x-11, y) == color(253))
    {
      right=true;
      bro.filler1=0;
    }
    if (get(x+11, y) == color(253))
    {
      right=false;
      bro.filler2= 0;
    }
    if (get(x-11, y) == color(252))
    {
      right=true;
      bro2.filler1=0;
    }
    if (get(x+11, y) == color(252))
    {
      right=false;
      bro2.filler2= 0;
    }
  }
  void show()
  {
    fill(255);
    ellipse(x, y, 20, 20);
  }
}
class paddle
{
  int a;
  paddle()
  {
    a=300;
  }
  void keyPressed()
  {
    if (keyPressed && key=='w')
    {
      a=a-2;
    }
    if (keyPressed && key=='s')
    {
      a=a+2;
    }
    if (a<0)
    {
      a=0;
    }
    if (a>430)
    {
      a=430;
    }
  }
  void appear()
  {
    fill(254);
    rect(30, a, 10, 70);
  }
}
class paddle2
{
  int b;
  paddle2()
  {
    b=200;
  }
  void mouseMoved()
  {
    if (mousePressed==true)
    {
      b=mouseY;
    }
    if (b<0)
    {
      b=0;
    }
    if (b>430)
    {
      b=430;
    }
  }
  void appear()
  {
    fill(254);
    rect(470, b, 10, 70);
  }
}
class barrier
{
  int a, b, c, filler1, filler2;
  barrier()
  {
    a=0;
    b=-10;
    c=495;
    filler1=253;
    filler2=253;
  }
  void leftbarrier()
  {
    fill(filler1);
    rect(a, b, 5, 510);
  }
  void rightbarrier()
  {
    fill(filler2);
    rect(c, b, 5, 510);
  }
}


