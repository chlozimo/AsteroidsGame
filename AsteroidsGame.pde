Spaceship Gerald;
ArrayList <Asteroid> AsteroidList  = new ArrayList <Asteroid>();
Star[] StarsArray = new Star[1000]; 
public void setup() 
{
size(500,500);
  Gerald = new Spaceship();
  for (int i=0; i<StarsArray.length; i++){ StarsArray[i] = new Star(); }
  for (int jk = 0; jk < 3; jk++){ AsteroidList.add(new Asteroid()); }
 
}
public void draw()
{
  background(0, 0, 0);
  Gerald.show();
  Gerald.move();
  drawStars();
  drawAsteroids();
}

public void drawStars(){
  for (int j = 0; j< StarsArray.length; j++){ 
    StarsArray[j].show(); 
   }
 }
public void drawAsteroids(){
 for (int l = 0; l< AsteroidList.size(); l++){
    System.out.println( AsteroidList.get(0));
    AsteroidList.get(l).show();
    AsteroidList.get(l).move();
    AsteroidList.get(l).setDirectionX( (double) (Math.random() * 5) - 3);
    AsteroidList.get(l).setDirectionY( (double) (Math.random() * 5) - 3);
    
    float asteriodX = dist(Gerald.getX(),Gerald.getY(),AsteroidList.get(l).getX(), AsteroidList.get(l).getY());
    if( asteriodX < 7){
      AsteroidList.remove(l);
    }
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
    Gerald.setPointDirection((int)(Math.random()*360));
    Gerald.setX((int)(Math.random()*360));
    Gerald.setY((int)(Math.random()*360));
    Gerald.setDirectionX(0);
    Gerald.setDirectionY(0);
  }
}
