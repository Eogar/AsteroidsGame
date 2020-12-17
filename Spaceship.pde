class Spaceship extends Floater  
{   
  public Spaceship() {
  corners = 3;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];   
  yCorners = new int[corners];   
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  myColor = 200;   
  myCenterX = 350;
  myCenterY = 350; //holds center coordinates   
  myXspeed = 0;
  myYspeed = 0; //holds the speed of travel in the x and y directions   
  myPointDirection = 0; //holds current direction the ship is pointing in degrees 
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}   
  public void setPointDirection(int degrees) {myPointDirection = degrees;} 
  public double getPointDirection() {return myPointDirection;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
  
  public void hyperspace() {
  myCenterX = (Math.random()*400);
  myCenterY = Math.random()*400;
  myPointDirection = 180*Math.random();
  }
}
