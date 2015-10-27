class Ball
{
  float x,y;
  float size;
  float speedX, speedY;
  float r = random(0,255);
  float g = random(0,255);
  float b = random(0,255);
  float temp;
  
  Ball(float px, float py, float ps, float spX, float spY)
  {
    x = px;
    y= py;
    size = ps;
    speedX = spX;
    speedY = spY;
    temp=size;
  }
  
  void accelerate(int k){
    if(k==2){
      speedX+=1;
      speedY+=1;
    }else{
      speedX-=1;
      speedY-=1;
    }
  }
  
  void draw(int k)
  {
    if(k==5){
      size = size + k;
      if(size==50)size=5;
      r = random(5,255) - k;
      g = random(0,250) + k;
      b = random(5,255) - k;
    }
    
    fill(r,g,b);
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