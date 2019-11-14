Spaceship bob = new Spaceship();//your variable declarations here
Star [] sue = new Star[500];

public void setup() 
{
  background(0);
  size(500, 500);
  for(int i = 0; i < sue.length; i++)
  {
  	sue[i] = new Star();
  }
}

public void draw() 
{
  background(0);

  for(int i = 0; i < sue.length; i++)
  {
  	sue[i].show();
  }

  bob.show();
  bob.move();
}

public void keyPressed()
{
	if(key == 'w')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.getPointDirection();
	}

	if(key == 'd')
	{
		bob.turn(15);
	}

	if(key == 'a')
	{
		bob.turn(-15);
	}

	if(key == 's')
	{
		bob.accelerate(0.54);
	}
}



