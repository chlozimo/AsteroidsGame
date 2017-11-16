class Asteroid extends Floater
{
  private int aSpeed;
  
  public Asteroid() {
    corners = 6; 
    int[] xS = {0,4,7,8,3,2};
    int[] yS = {4,8,8,2,11};
    xCorners = xS;
    yCorners = yS;
    myColor = 20;
    myCenterX = 250;
  myCenterY = 250;
   myDirectionX = 0;
  myDirectionY = 0;   
  myPointDirection = 360;
    aSpeed = (int)(Math.random()*2)-1;
  }
  public void move(){
     
      super.move();
      myCenterX += myDirectionX * (int)(Math.random()*5);
      myCenterY += myDirectionY * (int)(Math.random()*5);
    }
  public void setX(int x) {
    myCenterX = x;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getX() { 
    return (int)myCenterX;
  }
  public int getY() { 
    return (int)myCenterY;
  }

  public void setDirectionX(double x) {
    myDirectionX = x;
  }

  public double getDirectionX() { 
    return myDirectionX;
  }  

  public void setDirectionY(double y) { 
    myDirectionY = y;
  } 
  public double getDirectionY() {
    return myDirectionY;
  } 
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }   
  public double getPointDirection() {
    return myPointDirection;
  }
}