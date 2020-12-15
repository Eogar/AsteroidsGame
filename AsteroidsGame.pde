//your variable declarations here
Spaceship bob = new Spaceship();
Star[] S = new Star[200];
ArrayList<Asteroid> m = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
public void setup() 
{
size(500,500);
background(0);
for (int i = 0; i < S.length; i++) {
  S[i] = new Star();
  }
for (int i = 0; i < 40; i++){
  m.add(i, new Asteroid());
}
for (int i = 0; i < shots.size(); i++){
  shots.get(i).move();
  shots.get(i).show();
}
}
public void keyPressed() {
  if (keyCode == LEFT) {
      bob.turn(-16);
      }
       else if(keyCode == RIGHT) {
       bob.turn(16);
      }
      if (keyCode == UP) {
       bob.accelerate(0.25);
      }
      if (keyCode == DOWN) { // slow down to 0 spd plz
        bob.accelerate(-0.25);
        }
      if (keyCode == SHIFT) {
       bob.hyperspace();
     }
     if (key == ' '){
       shots.add(new Bullet(bob));
     }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < S.length; i++) {
  S[i].show();
  }
  for(int i = 0; i < m.size(); i++){
    m.get(i).show();
    m.get(i).move();
    float c = dist((float)bob.getX(), (float)bob.getY(), (float)m.get(i).getX(), (float)m.get(i).getY());
    
    if (c < 1){
      m.remove(i);
  }
}
}
