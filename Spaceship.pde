class Spaceship extends Floater  
{   
    public Spaceship() {
     corners = 3;
      myCenterY = 250;
      myCenterX = 250;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
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
