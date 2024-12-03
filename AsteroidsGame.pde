//boooooom
Star [] hamilition;
Spaceship bassan;

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





