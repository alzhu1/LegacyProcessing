import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

boolean opacity = false;
public void setup()
{
	size(300,300);
}
public void draw()
{
	strokeWeight(3);
	fill(204,204,204,60);
	opacityFade();
}
public void mouseDragged()
{
	if(mouseButton == LEFT)
	{
		ellipse(mouseX,mouseY,50,50);
		point(mouseX,mouseY);
	}
	if(mouseButton == RIGHT)
	{
		rect(mouseX-25,mouseY-25,50,50);
		point(mouseX,mouseY);
	}
	if(mouseButton == CENTER)
	{
		line(pmouseX,pmouseY,mouseX,mouseY);
	}
}
public void keyPressed()
{
	if(key == '0')
	{
		opacity = !opacity;
	}
	if(key == 'r')
	{
		stroke(255,0,0);
	}
	if(key == 'g')
	{
		stroke(0,255,0);
	}
	if(key == 'b')
	{
		stroke(0,0,255);
	}
	if(key == '1')
	{
		stroke(0,0,0);
	}
	if(key == 'w')
	{
		stroke(255,255,255);
	}
	if(key == 'p')
	{
		stroke(255,0,255);
	}
}
public void opacityFade()
{
	if(opacity == true)
	{
		rect(0,0,300,300);
	}
	else
	{
		point(0,0);
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
