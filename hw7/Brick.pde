class Brick
{
  float x,y;
  float w,h;
  color c;
  boolean on = true;
  float r = random(150);
  float g = random(255);
  float b = random(200);
  
  Brick(float bx, float by, float bw, float bh, color col)
  {
    x = bx;
    y = by;
    w = bw;
    h = bh;
    c=col;
  }
  
  void draw(int k)
  {
    rectMode(CORNER);
    if(k==5){
      r = random(0,255);
      g = random(0,250);
      b = random(0,255);
      c = color(r,g,b);
    }
    fill(c);
    rect(x,y,w,h);
  }
  
  
  
  void check(Ball b)
  {
    if(b.x>x && b.x<x+w && b.y<=y+h && b.y>y)
    {
      on = false;
      b.speedY = -b.speedY;
    }
  }
}