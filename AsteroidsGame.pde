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
  //float d = dist(width/2, height/2, mouseX, mouseY);
  //float maxDist = dist(0,0, width/2, height/2);
  //float gray = map(d, 0, maxDist,0, 255);
  

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
    AsteroidList.get(l).setDirectionX( (double) (Math.random() * 10) - 3);
    AsteroidList.get(l).setDirectionY( (double) (Math.random() * 10) - 3);
    
    float asteriodX = dist(Gerald.getX(),Gerald.getY(),AsteroidList.get(l).getX(), AsteroidList.get(l).getY());
    if( asteriodX < 7){
      AsteroidList.remove(l);
    }
  }
}
public void moveAsteroid(Asteroid asteroid1 ){
  //  asteroid1.move();
  //  asteroid1.setDirectionX( (double) (Math.random()) - 3);
  //  asteroid1.setDirectionY( (double) (Math.random()) - 3);
    
  //  float asteriodX = dist(Gerald.getX(),Gerald.getY(),asteroid1.getX(), asteroid1.getY());
  //if( asteriodX < 10){
  //   asteroid1.remove();
  //}

    
    
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
