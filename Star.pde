class Star //note that this class does NOT extend Floater
{
  private int x;
  private int y;
  private int myColor;
  public Star(){
   x = (int)(Math.random()*500);
   y = (int)(Math.random()*500);
   myColor = color((int)(Math.random()*256),
                   (int)(Math.random()*256),
                   (int)(Math.random()*256));
  }
   public void show(){
     noStroke();
     fill(myColor);
     ellipse(x,y,10,10);
    }
}
