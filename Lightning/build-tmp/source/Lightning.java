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

public class Lightning extends PApplet {

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
public void setup()
{
  size(300,300);
  strokeWeight(4);
}
public void draw()
{
	while(endX<301)
	{
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*19-9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
public void mousePressed()
{
	int c1 = (int)(Math.random()*256);
	int c2 = (int)(Math.random()*256);
	int c3 = (int)(Math.random()*256);
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
	background(c1,c2,c3);
	stroke(c3,c1,c2);
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
