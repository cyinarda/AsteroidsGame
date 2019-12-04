Spaceship bob = new Spaceship();//your variable declarations here
Star [] sue = new Star[500];
ArrayList<Asteroid> bill = new ArrayList<Asteroid>();

public void setup() 
{
  background(0);
  size(500, 500);
  for(int i = 0; i < sue.length; i++)
  {
  	sue[i] = new Star();
  }

for(int i = 0; i < 10; i++)
  bill.add(new Asteroid());

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

  for(int i = 0; i < bill.size(); i++)
  {
  bill.get(i).show();
  bill.get(i).move();
 }
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



