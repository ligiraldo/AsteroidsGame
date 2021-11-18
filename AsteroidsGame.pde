Spaceship bob;
Star[] stars;
public void setup() 
{
  stars = new Star[100];
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  size(500,500);
  bob = new Spaceship();
}
public void draw()
{
       background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  //hyperspeed thing
  if(key == 'h'){
    
  }
  if(key == 'w'){
    bob.accelerate(1);
  }
  if(key == 'a'){
    bob.turn(-45);
  }
  if(key == 'd'){
    bob.turn(45);
  }
  if(key == 'h'){
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myCenterX = (Math.random()*500);
    bob.myCenterY = (Math.random()*500);
  }
}
