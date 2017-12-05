Spaceship Gerald;
Asteroid[] AsteriodsArray = new Asteroid[50];
Star[] StarsArray = new Star[1000]; 
public void setup() 
{
  size(500,500);
  Gerald = new Spaceship();
  for (int i=0; i<StarsArray.length; i++){ StarsArray[i] = new Star(); }
  for (int jk = 0; jk<AsteriodsArray.length; jk++){ AsteriodsArray[jk] = new Asteroid(); }
 
}
public void draw()
{
  background(0, 0, 0);
  Gerald.show();
  Gerald.move();
  
  for (int j = 0; j< StarsArray.length; j++){ 
    StarsArray[j].show(); 
   }
  for (int l = 0; l< AsteriodsArray.length; l++){
    AsteriodsArray[l].show(); 
    AsteriodsArray[l].move();
    AsteriodsArray[l].setDirectionX( (double) (Math.random()*10)-5);
    AsteriodsArray[l].setDirectionY( (double) (Math.random()* 10) -5);
  }
}
public void keyPressed() 
{
  if (key == 'w'){ Gerald.setPointDirection(270); }
  if (key == 'd') { Gerald.turn(5); }
  if ( key == 'a') { Gerald.turn(-5); }
  if ( key == 's') { Gerald.setPointDirection(90); }
  if ( key == ' ') { Gerald.accelerate(0.3 ); }
  if (key == 'p') 
  {
    Gerald.setPointDirection((int)(Math.random()*360)-200);
    Gerald.setX((int)(Math.random()*360));
    Gerald.setY((int)(Math.random()*360));
    Gerald.setDirectionX(0);
    Gerald.setDirectionY(0);
  }
}