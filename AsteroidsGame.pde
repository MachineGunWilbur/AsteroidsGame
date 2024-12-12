//boooooom
Star [] hamilition;
Spaceship bassan;
ArrayList<Astroids> mrchan;
public void keyReleased() {
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

public void setup() 
{
  size(500,500);
  mrchan = new ArrayList<Astroids>();
  bassan = new Spaceship();
  hamilition = new Star [500];
  
  
    for(int i =0; i < hamilition.length - 50 ; i++) {
    hamilition[i] = new Star();
  }for (int i = 450; i < hamilition.length;i++){
    hamilition[i] = new bigStar();
  }for(int i = 0; i < 20; i++){
    mrchan.add(new Astroids());
  }
}

public void draw() 
{
  background(0);
   noStroke();
    for(int i =0; i < hamilition.length; i++) {
   hamilition[i].show();
  }for(int i = 0; i < 20; i ++){
    mrchan.get(i).show();
  }
  bassan.show();
  bassan.move();
}
