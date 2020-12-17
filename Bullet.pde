class Bullet extends Floater{
  public Bullet (Spaceship bob){
    double dR;
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    dR =myPointDirection*(Math.PI/180);  
    myXspeed = 5 * Math.cos(dR) + bob.getXspeed();
    myYspeed = 5 * Math.sin(dR) + bob.getYspeed();
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    accelerate(.01);
  }
  public void show(){
  fill(150,150,0);
  ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;} 
}
