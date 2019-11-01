//your code here
Particle[]gd =new Particle[300];
boolean start=false;
void setup()
{
	//your code here
	size(500,500);
	for(int i=0; i<gd.length;i++)
	{
		gd[i]=new Particle();
	}
	gd[0]= new OddballParticle();
}
void draw()
{
	//your code here
	background(0);
	for(int x=0; x<gd.length; x++)
	{
		gd[x].show();
		gd[x].move();
	}
}
class Particle
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	int myColor;
	Particle()
	{
		myX=170;
		myY=150;
		myAngle=Math.random()*2*Math.PI;
		mySpeed=Math.random()*10;
		myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move()
	{
		myX=myX+(float)Math.cos(myAngle)*mySpeed;
		myY=myY+(float)Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,30,30);
	}
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
	double myX,myY,mySpeed,myAngle;
	int myColor;
	OddballParticle()
	{
		myX=350;
		myY=270;
		myAngle=Math.random()*2*Math.PI;
		mySpeed=Math.random()*10;
		myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move()
	{
		myX=myX+((int)(Math.random()*2)-1);
		myY=myY+((int)(Math.random()*2)-1);
	}
	void show()
	{		
		noStroke();
		fill(myColor);
		rect((float)myX,(float)myY,80,80);
	}
}


