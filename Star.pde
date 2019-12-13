class Star //note that this class does NOT extend Floater
{
	private int myStarColor, mySize, myX, myY;

  public Star()
  {
  	myStarColor = 255;
  	mySize = (int)(Math.random() * 3) + 1;
  	myX = (int)(Math.random() * 500) + 1;
  	myY = (int)(Math.random() * 500) + 1;
  }

  public void show()
  {
  	fill(myStarColor);
  	ellipse(myX, myY, mySize, mySize);
  }

}
