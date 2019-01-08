float angulo = 0.0;    // Ángulo actual
float velocidad = 0.05;    // Velocidad del movimiento
float rango = 30.0;  // Rango del movimiento
float sx = 1.0;
float sy = 2.0;

void setup()
{
  size(100, 100);
  noStroke();
  smooth();
}
void draw()
{
  fill(0, 4);
  rect(0, 0, width, height);
  angulo += velocidad;  // Actualiza ángulo
  float sinVal = sin(angulo);
  float cosVal = cos(angulo);
  // Configuro la posición de círculo pequeño basado
  // en los valores nuevos de sin() y cos()
  float x = 50 + (cosVal * rango);
  float y = 50 + (sinVal * rango);
  fill(255);
  ellipse(x, y, 2, 2);  // Dibujo círculo pequeño
  // Configuro la posición de círculo grande basado
  // en la nueva posición de círculo pequeño
  float x2 = x + cos(angulo * sx) * rango/2;
  float y2 = y + sin(angulo * sy) * rango/2;
  ellipse(x2, y2, 6, 6);  // Dibujo círculo grande
}
