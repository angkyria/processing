Brick [][] bricks;
Ball ball;
Slider slider;
int numX = 10;
int numY = 3;
float bHeight = 20;

float posX=0;

  void setup()
{
  size(800, 500);
  
  bricks = new Brick[numY][numX];
  for (int j=0; j<numY; ++j)
  {
    for (int i=0; i<numX; ++i)
    {
      bricks[j][i] = new Brick((width/numX)*i, bHeight *j, width/numX,bHeight,color(255,40,50));
    }
  }
  
  ball = new Ball(width/2,height-15, 10, random(-3.0,3.0),-1);
  slider = new Slider(width/2,height,50,10);
}

void draw()
{
  background(0);
  for(int j=0; j<numY; ++j)
  {
    for(int i=0; i<numX; ++i)
    {
      if(bricks[j][i].on == true)
      {
        bricks[j][i].check(ball);
       bricks[j][i].draw();
      }
    }
  }
  
  ball.draw();
  ball.bounce();
  slider.draw(posX);
  slider.check(ball,posX);
}

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT) posX = posX-20;
    if(keyCode == RIGHT) posX = posX+20;
  }
}