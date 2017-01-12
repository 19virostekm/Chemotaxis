Bacteria[] dots;
void setup()
{
  size(500,500);
  dots = new Bacteria[50];
  for(int i = 0;i < dots.length;i++)
  {
    dots[i] = new Bacteria();
  }
}
void draw()
{
  background(0,0,0);
  for(int i = 0;i < dots.length;i++)
  {
   dots[i].moveBacteria();
   dots[i].show();
  }
}
class Bacteria
{
  int myX, myY,aX, aY;
  
  Bacteria()
  {
    myX = 250;
    myY = 250;
  }
  
  void show()
  {
    ellipse(myX,myY,10,10);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  
  public void moveBacteria()
  {
    if(mouseX>myX)
    {
      aX = 0;
    }
    if(mouseY>myY)
    {
      aY = 0;
    }
    if(mouseX<myX)
    {
      aX = 3;
    }
    if(mouseY<myY)
    {
      aY = 3;
    }
    
    myX = myX + (int)(Math.random()*4)-aX;
    myY = myY + (int)(Math.random()*4)-aY;
    
    if(mousePressed == true) 
    {
      myX = mouseX;
      myY = mouseY;
    }
  }
}
