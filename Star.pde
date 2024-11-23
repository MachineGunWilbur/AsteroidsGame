class Star //note that this class does NOT extend Floater
{
   double myX,myY;
  int myColor;
  Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*255) ,(int)(Math.random()*255),(int)(Math.random()*255));
  }
  
   void show(){
     fill(myColor);
       ellipse((float)myX, (float)myY, 5,5);   
  }
}
