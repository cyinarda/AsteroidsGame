Spaceship bob = new Spaceship();//your variable declarations here
Star [] sue = new Star[500];
ArrayList<Asteroid> bill = new ArrayList<Asteroid>();
ArrayList<Bullet> ben = new ArrayList<Bullet>();

public void setup() 
{
  background(0);
  size(500, 500);
  for(int i = 0; i < sue.length; i++)
  {
  	sue[i] = new Star();
  }

for(int i = 0; i < 10; i++)
{
  bill.add(new Asteroid());
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

  for(int i = 0; i < bill.size(); i++)
  {
  bill.get(i).show();
  bill.get(i).move();
 }

 for(int i = 0; i < ben.size(); i++)
 {
 	ben.get(i).show();
 	ben.get(i).move();
 }

 for(int i = 0; i < bill.size(); i++)
 {
 	for(int j = 0; j < ben.size(); j++)
 	{
 		if(dist((float)ben.get(j).getCenterX(), (float)ben.get(j).getCenterY(), (float)bill.get(i).getCenterX(), (float)bill.get(i).getCenterY()) < 20)
 		{
 			bill.remove(i);
 			ben.remove(j);
 		}
 	}

 }


}

public void keyPressed()
{
	if(key == 'w')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setPointDirection(Math.random() * 100 * PI);
	}

	else if(key == 'd')
	{
		bob.turn(15);
	}

	else if(key == 'a')
	{
		bob.turn(-15);
	}

	else if(key == 's')
	{
		bob.accelerate(0.54);
	}

	else if(key == 'm')
	{
		ben.add(new Bullet(bob));

	}
}



