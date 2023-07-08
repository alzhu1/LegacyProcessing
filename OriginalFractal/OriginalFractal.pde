int di = 50;
int xTransDist = 500;
int yTransDist = 500;
double roat = 0;
boolean noTrip = true;
public void setup()
{
	size(1000,1000);
}
public void draw()
{
	if(noTrip)
	{
		background(204);
	}
	fill(0);
	text("x coordinate is: " + xTransDist, 0,10);
	text("y coordinate is: " + yTransDist, 0,20);
	noFill();
	translate(xTransDist,yTransDist);
	roat=roat+.05;
	rotate((float)roat);
	strokeWeight(10);
	point(0,0);
	strokeWeight(1);
	crazyCircles(500-xTransDist,500-yTransDist,di);
}
public void mousePressed()
{
	if(di<800)
	{
		di=di*2;
	}
	else
	{
		di=50;
	}
}
public void keyPressed()
{
	if(key==' ')
	{
		noTrip=!noTrip;
	}
	if(key=='w')
	{
		yTransDist=yTransDist-1;
	}
	if(key=='s')
	{
		yTransDist=yTransDist+1;
	}
	if(key=='a')
	{
		xTransDist=xTransDist-1;
	}
	if(key=='d')
	{
		xTransDist=xTransDist+1;
	}
}
public void crazyCircles(int x, int y, int diam)
{
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	if(diam>50)
	{
		crazyCircles(x, y+diam/4, diam/2);
		crazyCircles(x, y-diam/4, diam/2);
		crazyCircles(x+diam/4, y, diam/2);
		crazyCircles(x-diam/4, y, diam/2);
	}
		ellipse(x,y,diam,diam);
}