float angulo = 0.0;
float velocidad = 0.1;

void setup()
{
  size(100, 100);
  noStroke();
  smooth();
}

void draw()
{
  background(0);
  angulo += velocidad;
  ellipse(50 + (sin(angulo + PI) * 5), 25, 30, 30);
  ellipse(50 + (sin(angulo + HALF_PI) * 5), 55, 30, 30);
  ellipse(50 + (sin(angulo + QUARTER_PI) * 5), 85, 30, 30);
}
