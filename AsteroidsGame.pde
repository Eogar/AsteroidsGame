//your variable declarations here
Spaceship bob = new Spaceship();
Star[] S = new Star[500];
ArrayList<Asteroid> m = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
boolean shoot = false;
public void setup() 
{
size(700,700);
background(0);
for (int i = 0; i < S.length; i++) {
  S[i] = new Star();
  }
for (int i = 0; i < 40; i++){
  m.add(i, new Asteroid());
}
for (int i = 0; i < 0; i++){
  shots.add((i), new Bullet(bob));
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
       bob.accelerate(0.15);
      }
      if (keyCode == DOWN) { // slow down to 0 spd plz
        bob.accelerate(-0.15);
        }
      if (keyCode == SHIFT) {
       bob.hyperspace();
     }
     if (key == ' '){
       shoot = true;
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
    int c = (int)Math.sqrt((bob.getX()-m.get(i).getX())*(bob.getX()-m.get(i).getX()) 
    + (bob.getY()-m.get(i).getY())*(bob.getY()-m.get(i).getY()));
    if (c < 20){
      m.remove(i);
  }
  }
  for(int i = 0; i < shots.size(); i++) {
   if(shoot == true) {
    shots.get(i).show();
    shots.get(i).move();
  }
  }
  for(int j = 0; j < m.size(); j++) {
  for(int z = 0; z < shots.size(); z++) {
    if(shoot == true) {
    if (dist(shots.get(z).getX(),shots.get(z).getY(), m.get(j).getX(),m.get(j).getY()) <= 8){
      shots.remove(z);
      m.remove(j);
      break;
    }
    }
  }
  }
}
