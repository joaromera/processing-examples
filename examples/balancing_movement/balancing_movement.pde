float inc = 0.0;

void setup()
{
  size(100, 100);
  stroke(255, 204);
  smooth();
}

void draw()
{
  background(0);
  inc += 0.01;
  float angulo = sin(inc)/10.0 + sin(inc*1.2)/20.0;
  alga(18, 9, angulo/1.3);
  alga(33, 12, angulo);
  alga(44, 10, angulo/1.3);
  alga(62, 5, angulo);
  alga(88, 7, angulo*2);
}

void alga(int x, int unidades, float angulo)
{
  pushMatrix();
  translate(x, 100);
  for (int i = unidades; i > 0; i--)
  {
    strokeWeight(i);
    line(0, 0, 0, -8);
    translate(0, -8);
    rotate(angulo);
  }
  popMatrix();
}
