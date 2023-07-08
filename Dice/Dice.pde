int clicked = 1;
Die marco = new Die(5,0);
void setup()
{
	size(300,300);
	textAlign(CENTER);
	textSize(13);
	noLoop();
}
void draw()
{
	int sum = 0;
	background(127);
	while(marco.yPos < 200)
	{
		while(marco.xPos < 300)
		{
			marco.roll();
			marco.show();
			marco.c1 = (int)(Math.random()*256);
			marco.c2 = (int)(Math.random()*256);
			marco.c3 = (int)(Math.random()*256);
			sum = sum + marco.numba;
			marco.xPos = marco.xPos + 50;
		}
		marco.yPos = marco.yPos + 50;
		marco.xPos = 5;
	}
	marco.yPos = 0;
	fill(0);
	text("We got us " + sum + " for the total roll", 150,250);
	text("On average, we got us " + (double)sum/24, 150, 270);
	text("You have rolled " + clicked + " times", 150,290);
}
void mousePressed()
{
	clicked++;
	redraw();
}
class Die //models one single dice cube
{
	int xPos, yPos, numba, c1, c2, c3;
	Die(int x, int y) //constructor
	{
		xPos = x;
		yPos = y;
		numba = 0;
		c1 = (int)(Math.random()*256);
		c2 = (int)(Math.random()*256);
		c3 = (int)(Math.random()*256);
	}
	void roll()
	{
		numba = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill(c3,c2,c1);
		rect(xPos,yPos,40,40);
		fill(c1,c3,c2);
		if(numba == 1)
		{
			ellipse(xPos+20,yPos+20,5,5);
		}
		else if(numba == 2)
		{
			ellipse(xPos+10,yPos+30,5,5);
			ellipse(xPos+30,yPos+10,5,5);
		}
		else if(numba == 3)
		{
			ellipse(xPos+10,yPos+30,5,5);
			ellipse(xPos+20,yPos+20,5,5);
			ellipse(xPos+30,yPos+10,5,5);
		}
		else if(numba == 4)
		{
			ellipse(xPos+10,yPos+10,5,5);
			ellipse(xPos+10,yPos+30,5,5);
			ellipse(xPos+30,yPos+10,5,5);
			ellipse(xPos+30,yPos+30,5,5);
		}
		else if(numba == 5)
		{
			ellipse(xPos+10,yPos+10,5,5);
			ellipse(xPos+10,yPos+30,5,5);
			ellipse(xPos+20,yPos+20,5,5);
			ellipse(xPos+30,yPos+10,5,5);
			ellipse(xPos+30,yPos+30,5,5);
		}
		else
		{
			ellipse(xPos+10,yPos+10,5,5);
			ellipse(xPos+10,yPos+20,5,5);
			ellipse(xPos+10,yPos+30,5,5);
			ellipse(xPos+30,yPos+10,5,5);
			ellipse(xPos+30,yPos+20,5,5);
			ellipse(xPos+30,yPos+30,5,5);
		}
	}
}
