Spaceship Gerald;

Star[] Lights = new Star[700]; 
public void setup() 
{
  size(500, 500);
  Gerald = new Spaceship();
  for(int i=0; i<Lights.length; i++)
  {
   Lights[i] = new Star();
  }
}
public void draw() 
{
  background(0,0,0);
  Gerald.show();
  Gerald.move();
 
  for(int j = 0; j< Lights.length; j++)
  Lights[j].show();
}
public void keyPressed() {
  if (key == 'w')
  {
    Gerald.setPointDirection(270);
  }
  if (key == 'd')
  {
    Gerald.turn(5);
  }
  if ( key == 'a')
  {
    Gerald.turn(-5);
  }
  if ( key == 's')
  {
    Gerald.setPointDirection(90);
  }
  if ( key == ' ')
  {
    Gerald.accelerate(0.3 );
  }
  if (key == 'p'){
  Gerald.setPointDirection((int)(Math.random()*360)-200);
  Gerald.setX((int)(Math.random()*360));
  Gerald.setY((int)(Math.random()*360));
  Gerald.setDirectionX(0);
  Gerald.setDirectionY(0);
  }
}