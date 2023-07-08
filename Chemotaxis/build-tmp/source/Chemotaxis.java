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

public class Chemotaxis extends PApplet {

 //declare bacteria variables here   
 Bacteria [] colony;
 Food jeeves = new Food();
 public void setup()   
 {
 	size(500,500);
 	//initialize bacteria variables here
 	colony = new Bacteria[50];
 	for(int i = 0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 public void draw()   
 {
 	background(127);
 	noFill();
 	jeeves.show();
 	//move and show the bacteria
 	for(int j = 0; j<colony.length; j++)
 	{
 		colony[j].move();
 		colony[j].show();
 		if(colony[j].bacX == jeeves.foodX+5 && colony[j].bacY == jeeves.foodY+5)
 		{
 			jeeves.foodX = (int)(Math.random()*491);
 			jeeves.foodY = (int)(Math.random()*491);
 		}
 		if(get(colony[j].bacX,colony[j].bacY) != color(127))
 		{
 			if(get(colony[j].bacX,colony[j].bacY) == color(0,255,0))
 			{
 			}
 			else
 			{
 				colony[j].bacX = (int)(Math.random()*491);
 				colony[j].bacY = (int)(Math.random()*491);
 			}
 		}
 	}
 }  
 class Bacteria    
 {
 	int bacX, bacY, bacCol;
 	Bacteria()
 	{
 		bacX = (int)(Math.random()*491);
 		bacY = (int)(Math.random()*491);
 		bacCol = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	public void move()
 	{
 		bacX = bacX + (int)(Math.random()*3)-1;
 		bacY = bacY + (int)(Math.random()*3)-1;
 		if(jeeves.foodX+5 > bacX)
 		{
 			bacX = bacX + (int)(Math.random()*3);
 		}
 		else
 		{
 			bacX = bacX + (int)(Math.random()*3)-2;
 		}
 		if(jeeves.foodY+5 > bacY)
 		{
 			bacY = bacY + (int)(Math.random()*3);
 		}
 		else
 		{
 			bacY = bacY + (int)(Math.random()*3)-2;
 		}
 	}
 	public void show()
 	{
 		stroke(bacCol);
 		noFill();
 		ellipse(bacX,bacY,10,10);
 	}
 	//lots of java!   
 }    
 class Food
 {
 	int foodX, foodY;
 	Food()
 	{
 		foodX = (int)(Math.random()*491);
 		foodY = (int)(Math.random()*491);
 	}
 	public void show()
 	{
 		stroke(0,255,0);
 		fill(0,255,0);
 		rect(foodX,foodY,10,10);
 	}
 }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
