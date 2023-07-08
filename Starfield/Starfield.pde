//your code here
Particle[] bobby;
double starX, starY;
public void setup()
{
	size(500,500);
	bobby = new Particle[200];
	for(int i=0; i<bobby.length; i++)
	{
		bobby[i] = new NormalParticle();
	}
	bobby[0] = new OddballParticle();
	bobby[1] = new JumboParticle();
}
public void draw()
{
	//your code here
	fill(0,0,0,60);
	rect(0,0,500,500);
	for(int j=0; j<bobby.length; j++)
	{
		bobby[j].move();
		bobby[j].show();
		if(j>1)
		{
			if(((NormalParticle)bobby[j]).dX>500 || ((NormalParticle)bobby[j]).dX<0)
			{
				((NormalParticle)bobby[j]).dX=starX;
				((NormalParticle)bobby[j]).dY=starY;
				((NormalParticle)bobby[j]).dTheta = Math.random()*PI*2;
				((NormalParticle)bobby[j]).dSpeed = Math.random()*10+1;
			}
			if(((NormalParticle)bobby[j]).dY>500 || ((NormalParticle)bobby[j]).dY<0)
			{
				((NormalParticle)bobby[j]).dX=starX;
				((NormalParticle)bobby[j]).dY=starY;
				((NormalParticle)bobby[j]).dTheta = Math.random()*PI*2;
				((NormalParticle)bobby[j]).dSpeed = Math.random()*10+1;
			}
		}
		if(j==0)
		{
			if(((OddballParticle)bobby[j]).dX>500 || ((OddballParticle)bobby[j]).dX<0)
			{
				((OddballParticle)bobby[j]).dX=starX;
				((OddballParticle)bobby[j]).dY=starY;
			}
			if(((OddballParticle)bobby[j]).dY>500 || ((OddballParticle)bobby[j]).dY<0)
			{
				((OddballParticle)bobby[j]).dX=starX;
				((OddballParticle)bobby[j]).dY=starY;
			}
		}
		if(j==1)
		{
			if(((JumboParticle)bobby[j]).dX>500 || ((JumboParticle)bobby[j]).dX<0)
			{
				((JumboParticle)bobby[j]).dX=starX;
				((JumboParticle)bobby[j]).dY=starY;
				((JumboParticle)bobby[j]).dTheta = Math.random()*PI*2;
				((JumboParticle)bobby[j]).dSpeed = Math.random()*10+1;
			}
			if(((JumboParticle)bobby[j]).dY>500 || ((JumboParticle)bobby[j]).dY<0)
			{
				((JumboParticle)bobby[j]).dX=starX;
				((JumboParticle)bobby[j]).dY=starY;
				((JumboParticle)bobby[j]).dTheta = Math.random()*PI*2;
				((JumboParticle)bobby[j]).dSpeed = Math.random()*10+1;
			}
		}
	}
}
class NormalParticle implements Particle
{
	//your code here
	double dX, dY, dTheta, dSpeed;
	int nColor;
	public NormalParticle()
	{
		dX = 250;
		dY = 250;
		dTheta = Math.random()*PI*2;
		dSpeed = Math.random()*10+1;
		nColor = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
	}
	public void move()
	{
		dX = dX+Math.cos(dTheta)*dSpeed;
		dY = dY+Math.sin(dTheta)*dSpeed;
	}
	public void show()
	{
		fill(nColor);
		ellipse((float)dX,(float)dY,5,5);
	}
}
interface Particle
{
	//your code here
	public void move();
	public void show();
}
class OddballParticle implements Particle//uses an interface
{
	double dX, dY;
	int nColor;
	public OddballParticle()
	{
		dX = 250;
		dY = 250;
		nColor = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
	}
	public void move()
	{
		dX = dX+((int)(Math.random()*11))-5;
		dY = dX+((int)(Math.random()*11))-5;
	}
	public void show()
	{
		fill(nColor);
		ellipse((float)dX,(float)dY,20,20);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	public JumboParticle()
	{
		dX = 250;
		dY = 250;
		dTheta = Math.random()*PI*2;
		dSpeed = Math.random()+1;
		nColor = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
	}
	public void show()
	{
		fill(nColor);
		ellipse((float)dX,(float)dY,100,100);
	}
}
public void mouseClicked()
{
	starX = mouseX;
	starY = mouseY;
}
