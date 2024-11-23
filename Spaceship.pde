class Spaceship extends Floater  
{   
    public Spaceship() {
     corners = 7;
      myCenterY = 250;
      myCenterX = 250;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = 12;
     yCorners[0] = 0;
     xCorners[1] = -4;
     yCorners[1] = 6;
     xCorners[2] = -2;
     yCorners[2] = 4;
     xCorners[3] = -2;
     yCorners[3] = 2;
     xCorners[4] = -5;
     yCorners[4] = 0;
     xCorners[5] = -2;
     yCorners[5] = -2;
     xCorners[6] = -2;
     yCorners[6] = -4;
     xCorners[7] = -4;
     yCorners[7] = -6;
     myColor = color(255);
     
    }
    
   public void setX(int bomb) {
     myCenterX = bomb;
   }
   
   public void setY(int bomb) {
     myCenterY = bomb;
   }
   
      public void setXSpeed(int bomb) {
     myYspeed = bomb;
   }
   
   public void setYSpeed(int bomb) {
     myXspeed = bomb;
   }
   
   public void setDirect(double bomb) {
     myPointDirection = bomb;
   }
}
