class Asteroid extends Floater
{
  private int aRotspeed;
  public Asteroid() 
  {
    corners = 8; 
    int[] xS = {-10, -5, 0 , 5, 5, 0, -5, -10};
    int[] yS = {0, 5, 5, 0, -5, -10, -10, -5};
    xCorners = xS;
    yCorners = yS;
    myColor = 175;
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = (Math.random()*5)-2;
    myDirectionY = (Math.random()*5)-2;   
    myPointDirection = 360;
    aRotspeed =(int)(Math.random()*10)-5;;
  }
  public void setX(int x){ myCenterX = x; }
  public void setY(int y){ myCenterY = y; }
  
  public int getX(){ return (int)myCenterX; }
  public int getY(){ return (int)myCenterY; }
  
  public void setDirectionX(double x){ myDirectionX = x; }
  public double getDirectionX(){ return myDirectionX; }  
  
  public void setDirectionY(double y){ myDirectionY = y; } 
  public double getDirectionY(){ return myDirectionY; } 
  
  public void setPointDirection(int degrees){ myPointDirection = degrees; }   
  public double getPointDirection(){ return myPointDirection; }
  
  public void move() 
  {
    turn(aRotspeed);
    super.move();
    aRotspeed = 1;
  }
}