class Bubble
{
  float x;
  float y;
  float diameter;
  
  Bubble(int diam)
  {
    x = random(width);
    y = random(height);
    diameter = diam;
  }
  
  void ascend()
  {
    y -= 1;
  }
  
  void display()
  {
    fill(100,60);
    ellipse(x,y,diameter,diameter);
  }
  
  void top()
  {
    if (y < diameter / 2)
    {
      y = diameter / 2;
    }
  }
  
  void wraparound()
  {
    if (y < -diameter / 2)
    {
      x = random(width);
      y = height + diameter / 2;
    }
  }
}
