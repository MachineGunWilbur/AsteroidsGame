//boooooom
Star [] hamilition;
Spaceship bassan;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Astroids> mrchan;
public void keyReleased() {
   int ding = (int)(Math.random()*500);
   int speed = (int)(Math.random()*500);
   int wilbur = (int)(Math.random()*360);
 if (key == 'w'){
bassan.accelerate(-.05);
 }
 if (key == 'h') {
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
  bassan.turn(20); 
 }
 
 if(key == 'a') {
  bassan.turn(-20); 
 }
  if (key == ' ') {
    Bullet newBullet = new Bullet(bassan);  // Create a new bullet using the spaceship's position and direction
    bullets.add(newBullet);  // Add the bullet to the list
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
  }for(int i = 0; i < 50; i++){
    mrchan.add(new Astroids());
  }
}

public void draw() 
{
  background(0);
   noStroke();
   
    for(int i =0; i < hamilition.length; i++) {
   hamilition[i].show();
  }for(int i = 0; i < mrchan.size(); i ++){
    mrchan.get(i).move();
    mrchan.get(i).show();
    mrchan.get(i).accelerate(Math.random() / 25);
    mrchan.get(i).turn((int)(Math.random()*100) - (int)(Math.random()*100));
    if(dist(bassan.getX(),bassan.getY(), mrchan.get(i).getX(), mrchan.get(i).getY())<20){
      mrchan.remove(i);
    }
  }
  for (int i = 0; i < bullets.size(); i++) {
    Bullet bullet = bullets.get(i);
    bullet.show();
    bullet.move();

    // boom with asteroid
    for (int j = 0; j < mrchan.size(); j++) {
      Astroids asteroid = mrchan.get(j);
      if (dist((float)bullet.myCenterX, (float)bullet.myCenterY, asteroid.getX(), asteroid.getY()) < 15) {
        // Bullet boom asteroid
        mrchan.remove(j); 
        bullets.remove(i);  
        break; 
      }
      if (bullet.myCenterX < 0 || bullet.myCenterX > width || bullet.myCenterY < 0 || bullet.myCenterY > height) {
  bullets.remove(i);
}
    }

    if (bullet.myCenterX < 0 || bullet.myCenterX > width || bullet.myCenterY < 0 || bullet.myCenterY > height) {
      bullets.remove(i);
    }
  }
  bassan.show();
  bassan.move();
}
