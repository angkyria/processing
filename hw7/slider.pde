class Slider
{
  float x,y;
  float s_length, s_height;
  
  Slider(float sx, float sy, float sl, float sh)
  {
    x= sx;
    y = sy;
    s_length = sl;
    s_height = sh;
  }
  
  void draw(float px)
  {
    rectMode(CENTER);
    rect(x+px, y-(s_height/2), s_length, s_height); 
  }
  
  void check(Ball b, float px)
  {
    if(b.x> (x+px) - (s_length/2) && b.x< (x+px) + (s_length/2) && b.y> y-(s_height/2))
    {
      b.speedY = - b.speedY;
    }
  }
}