float inc = 0.06;
int densidad = 4;
float zRuido = 0.0;

void setup()
{
  size(100, 100);
  noStroke();
}

void draw()
{
  float xRuido = 0.0;
  float yRuido = 0.0;
  for (int y = 0; y < height; y += densidad)
  {
    for (int x = 0; x < width; x += densidad)
    {
      float n = noise(xRuido, yRuido, zRuido) * 256;
      fill(n);
      rect(y, x, densidad, densidad);
      xRuido += inc;
    }
    xRuido = 0;
    yRuido += inc;
  }
  zRuido += inc;
}
