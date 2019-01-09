class Bubble
{
  float x;
  float y;
  float diameter;
  
  Bubble()
  {
    x = width / 2;
    y = height / 2;
    diameter = 64;
  }
  
  void ascend()
  {
    y--;
    x = x + random(-2,2);
  }
  
  void display()
  {
    stroke(0);
    fill(127);
    ellipse(x,y,diameter,diameter);
  }
  
  void top()
  {
    if (y < diameter / 2)
    {
      y = diameter / 2;
    }
  }
}
