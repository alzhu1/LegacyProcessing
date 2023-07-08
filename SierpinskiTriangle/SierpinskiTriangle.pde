double num = 950;
public void setup()
{
	size(1000,1000);
	noLoop();
}
public void draw()
{
	background(204);
	sierpinski(25,900,950);
}
public void mousePressed()//optional
{
	if(num<950/64.0)
	{
		num=950;
		redraw();
	}
	else
	{
		num=num/2;
		redraw();
	}
}
public void sierpinski(int x, int y, int len) 
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),15);
	if(len>num)
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/4, (int)(y-Math.sqrt(3)*len/4), len/2);
		sierpinski(x+len/2, y, len/2);
	}
	triangle(x, y, x+len/2, (float)(y-Math.sqrt(3)*len/2), x+len, y);
}