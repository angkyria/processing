class Brick
{
  float x,y;
  float w,h;
  color c;
  boolean on = true;
  
  Brick(float bx, float by, float bw, float bh, color col)
  {
    x = bx;
    y = by;
    w = bw;
    h = bh;
    c= col;
  }
  
  void draw()
  {
    rectMode(CORNER);
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