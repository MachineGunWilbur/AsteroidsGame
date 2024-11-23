//your variable declarations here
Star [] hamilition;
Spaceship bassan;
public void setup() 
{
  size(500,500);
  bassan = new Spaceship();
  hamilition = new Star [500];
  
  
    for(int i =0; i < hamilition.length; i++) {
    hamilition[i] = new Star();
  }

  //your code here
}
public void draw() 
{
  background(0);
   noStroke();
    for(int i =0; i < hamilition.length; i++) {
    hamilition[i].show();
  }
  
   bassan.show();
  bassan.move();
  //your code here
}


public void keyPressed() {
 if (key == 'w') {
  bassan.accelerate(.1); 

 }
 
 if(key == 's') {
  bassan.accelerate(-.1); 
 }
 
  if(key == 'd') {
  bassan.turn(10); 
 }
 
 if(key == 'a') {
  bassan.turn(-10); 
 }

}


public void keyReleased() {
   if (key == 'w') {
   bassan.setYSpeed(0);
   bassan.setXSpeed(0);
 }
 
 if(key == 's') {
   bassan.setYSpeed(0);
   bassan.setXSpeed(0);
 }
 
 if (key == 'h') {
   int ding = (int)(Math.random()*500);
   int speed = (int)(Math.random()*500);
   int wilbur = (int)(Math.random()*360);
   bassan.setX(ding);
   bassan.setY(speed);
   bassan.setYSpeed(0);
   bassan.setXSpeed(0);
   bassan.setDirect((double)wilbur);
 }
}
