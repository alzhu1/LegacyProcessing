//Alex Zhu, APCS Block 1
boolean opacity = false;
void setup()
{
	size(300,300);
}
void draw()
{
	strokeWeight(3);
	fill(204,204,204,60);
	opacityFade();
}
void mouseDragged()
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
void keyPressed()
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
void opacityFade()
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