class Astroids extends Floater {
  private int rotSpeed;
  public Astroids() {
    rotSpeed = (int)(Math.random()*100) - (int)(Math.random()*100);
    corners = 6;
    myCenterY = Math.random()*500;
    myCenterX = Math.random()*500;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8 + (int)(Math.random()*4);
    xCorners[1] = 7 + (int)(Math.random()*1);
    yCorners[1] = -8;
    xCorners[2] = 13 - (int)(Math.random()*7);
    yCorners[2] = 0 + (int)(Math.random()*3);
    xCorners[3] = 6 + (int)(Math.random()*1);
    yCorners[3] = 10 + (int)(Math.random()*9);
    xCorners[4] = -11 - (int)(Math.random()*2);
    yCorners[4] = 8 - (int)(Math.random()*1);
    xCorners[5] = -5 + (int)(Math.random()*1);
    yCorners[5] = 0 + (int)(Math.random()*9);
    myColor = color(255);
    myXspeed = 1.0;
    myYspeed = 1.0; //holds the speed of travel in the x and y directions  
    myPointDirection = (int)(Math.random()*180);
   
  }
   public void setX(int speed) {
     myCenterX = speed;
   }
   public void move ()   //move the floater in the current direction of travel
  { 
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed + (int)(Math.random() *10) - (int)(Math.random() *10);    
    myCenterY += myYspeed + (int)(Math.random() *10) - (int)(Math.random() *10);     
    turn(rotSpeed);
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
   public void setY(int speed) {
     myCenterY = speed;
   }
   
      public void setXSpeed(int speed) {
     myYspeed = speed;
   }
   
   public void setYSpeed(int speed) {
     myXspeed = speed;
   }
   
   public void setDirect(double speed) {
     myPointDirection = speed;
   }
     public int getY(){return (int)myCenterY;}  
  public int getX(){return (int)myCenterX;}
}
