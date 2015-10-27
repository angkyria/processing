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
  slider = new Slider(width/2,height,200,10);
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
        if(second()%8==0){
          bricks[j][i].check(ball);
          bricks[j][i].draw(5);
        }else{
          bricks[j][i].check(ball);
          bricks[j][i].draw(0);
        }
      }
    }
  }
  if((second()%5==0)){
    ball.draw(5);
  }else{
    ball.draw(0);
  }
  //ball.draw();
  ball.bounce();
  if((second()%15)==0){
    slider.draw(posX,0.1);
  }else{
    slider.draw(posX,0);
  }
  slider.check(ball,posX);
}

void accelerate(){
  if(second()%15==0)ball.accelerate(1);
  if(second()%2==0)ball.accelerate(2);
  
}

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT) {
      posX = posX-20;
      
    }
    if(keyCode == RIGHT) {
      posX = posX+20;
      
    }
  }
}