float x = 0.0;
float easing = 0.8;

void setup()
{
  size(100,100);
  smooth();
}

void draw()
{
  background(0);
  float destinoX = mouseX;
  x += (destinoX - x) * easing;
  ellipse(mouseX, 30, 40, 40);
  ellipse(x, 70, 40, 40);
}
