float angulo = 0.0;     // Ángulo actual
float velocidad = 0.1;  // Velocidad del movimiento
float rango = 30.0;

void setup()
{
  size(100, 100);
  noStroke();
  smooth();
}

// Rango del movimiento
void draw()
{
  fill(0, 20);
  rect(0, 0, width, height);
  fill(255);
  angulo += velocidad;
  float sinval = sin(angulo);
  float yoffset = sinval * rango;
  ellipse(50, 50 + yoffset, 40, 40);
}
