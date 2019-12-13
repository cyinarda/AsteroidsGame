class Bullet extends Floater
{
	Bullet(Spaceship theShip)
	{
		setCenterX(bob.getCenterX());
		setCenterY(bob.getCenterY());
		myPointDirection = (bob.getPointDirection());
		double dRadians = myPointDirection * (Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + myDirectionX;
		myDirectionY = 5 * Math.sin(dRadians) + myDirectionY;
		myColor = color(0, 255, 0);
	}

	public void show()
	{
		ellipse((float)myCenterX, (float)myCenterY, 10, 10);
	}


	public void setCenterX(double h)
    {
        myCenterX = h;
    }

    public void setCenterY(double p)
    {
        myCenterY = p;
    }

    public double getCenterX()
    {
        return myCenterX;
    }

    public double getCenterY()
    {
        return myCenterY;
    }

    public void setPointDirection (double w)
    {
        myPointDirection = w;
    }

     public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      ben.remove(this);    
    }    
    else if (myCenterX<0)
    {     
      ben.remove(this);    
    }    
    if(myCenterY >height)
    {    
      ben.remove(this);    
    } 
    
    else if (myCenterY < 0)
    {     
      ben.remove(this);    
    } 

    }  

}