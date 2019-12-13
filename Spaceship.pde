class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 3;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;;
        myColor = color(255, 0, 0);
        myCenterX = 250;
        myCenterY = 250;
        myDirectionX = myDirectionY = 0.2;
        myPointDirection = 0;
    }

    public void setDirectionX (double x)
    {
        myDirectionX = x;
    }

    public void setDirectionY (double y)
    {
        myDirectionY = y;
    }

    public double getPointDirection ()
    {
        return myPointDirection;
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


}
