Spaceship bob;
Star[] stars;
ArrayList <Asteroid> asteroids;
public void setup()
{
  stars = new Star[100];
  asteroids = new ArrayList <Asteroid>();
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  size(500,500);
  bob = new Spaceship();
  for(int i = 0; i < 10; i++){
    asteroids.add(new Asteroid());
  }
}
public void draw()
{
       background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  bob.show();
  bob.move();
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());
    if(d < 20){
      asteroids.remove(i);
    }
  }
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
    bob.turn(Math.random()*180);
  }
}
