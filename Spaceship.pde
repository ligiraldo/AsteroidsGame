class Spaceship extends Floater  {  
    public Spaceship(){
      myColor = color(255,0,0);
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 1;
      myYspeed = 1;
      corners = 44;
      myPointDirection = 0;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
    }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
