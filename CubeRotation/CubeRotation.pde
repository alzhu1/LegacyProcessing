float x=0;
float y=0;
float z=0;
boolean shape=false;
void setup()
{
  size(500, 500, P3D);
  frameRate(30);
}
void draw()
{
  fill(0, 0, 0, 80);
  stroke(0);
  rect(0, 0, 500, 500);
  stroke(255, 255, 255);
  translate(mouseX, mouseY, 100);
  rotate(x+y+z);
  line(0, -150, 0, 150);
  line(150, 0, -150, 0);
  line(cos(3*QUARTER_PI)*150, sin(3*QUARTER_PI)*150, cos(-QUARTER_PI)*150, sin(-QUARTER_PI)*150);
  line(cos(QUARTER_PI)*150, sin(QUARTER_PI)*150, cos(-3*QUARTER_PI)*150, sin(-3*QUARTER_PI)*150);
  noFill();
  strokeWeight(5);
  ellipse(0, 0, 300, 300);
  fill(150, 120, 30);
  strokeWeight(1);
  rotateX(x);
  rotateY(y);
  rotateZ(z);
  if (shape==false)
  {
    box(100);
  }
  if (shape==true)
  {
    sphere(100);
  }
}
void mouseMoved()
{
  x=x+.07;
  y=y+.03;
  z=z-.01;
}
void mousePressed()
{
  if (mouseButton==LEFT)
  {
    shape=!shape;
  }
}
void keyPressed()
{
  if (key==CODED)
  {
    if (keyCode==UP)
    {
      noLoop();
    }
    if (keyCode==DOWN)
    {
      loop();
    }
    if (keyCode==LEFT || keyCode==RIGHT)
    {
      redraw();
    }
  }
}

