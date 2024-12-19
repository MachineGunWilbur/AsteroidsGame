class Bullet extends Floater {

  public Bullet(Spaceship theShip) {
    corners = 0;
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    myXspeed = cos((float)theShip.myPointDirection) * 6.0;  // Initial speed in the direction of the spaceship
    myYspeed = sin((float)theShip.myPointDirection) * 6.0;
    myPointDirection = theShip.myPointDirection;  // Bullet follows the spaceship's direction
    myColor = color(255, 0, 0);  // Red color for bullets
  }

  // Show the bullet
  
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float) myCenterX, (float) myCenterY, 5, 5);  // Bullet as a small circle
  }

  // Move the bullet
  
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    
    // Wrap around the screen
    if (myCenterX > width) {
      myCenterX = 0;
    } else if (myCenterX < 0) {
      myCenterX = width;
    }
    if (myCenterY > height) {
      myCenterY = 0;
    } else if (myCenterY < 0) {
      myCenterY = height;
    }
  }
}
