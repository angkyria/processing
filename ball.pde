class Ball
{
  float x,y;
  float size;
  float speedX, speedY;
  
  Ball(float px, float py, float ps, float spX, float spY)
  {
    x = px;
    y= py;
    size = ps;
    speedX = spX;
    speedY = spY;
  }
  
  void draw()
  {
    fill(255);
    ellipse(x,y,size,size);
    x+=speedX;
    y+=speedY;
  }
  
  void bounce()
  {
   if(x>width||x<0) speedX = -speedX;
   if(y<0) speedY = -speedY;
  }
}