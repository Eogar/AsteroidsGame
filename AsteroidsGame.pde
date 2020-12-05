//your variable declarations here
Spaceship bob = new Spaceship();
Star[] S = new Star[200];
ArrayList<Asteroid> m = new ArrayList<Asteroid>();
public void setup() 
{
size(400,400);
background(0);
for (int i = 0; i < S.length; i++) {
  S[i] = new Star();
  }
for (int i = 0; i < 20; i++){
  m.add(i, new Asteroid());
}
}
public void keyPressed() {
  if(key == CODED) {
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
      }
      if (keyCode == SHIFT) {
       bob.hyperspace();
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
  }
}
