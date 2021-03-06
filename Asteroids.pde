class Asteroid extends Floater {
  private int rotation;
  private double myDirectionX;
  private double myDirectionY;
  Asteroid() {
    rotation = (int)(Math.random() * 3 + 1);
    corners = 18;
    int[] xS = {5, 5, 5, 5, 5, 7, 7, 7, 7, 9, 9, 9, -11, -11, -11, -11, -10, -10};
    int[] yS = {-7, -7, -7, -7, -7, 9, 9, 9, 9, 9, 9, 15, 15, 3, 3, 3, 3, 3};
    xCorners = xS;
    yCorners = yS;
    myColor = color(80);
    myCenterX = (Math.random() * 700);
    myCenterY = (Math.random() * 700);
    myPointDirection = (Math.random() * 361);
    myDirectionX = Math.random() * 5 - 2.5;
    myDirectionY = Math.random() * 5 - 2.5;
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;} 
    public void move() {
      myCenterX += myDirectionX;    
      myCenterY += myDirectionY;
      myPointDirection += rotation;
      super.move();
    }
}
