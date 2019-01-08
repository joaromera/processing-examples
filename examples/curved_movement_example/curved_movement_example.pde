float origenX = 20.0;  // Coordenada de origen en X
float origenY = 10.0;  // Coordenada de origen en Y
float destinoX = 70.0; // Coordenada de destino en X
float destinoY = 80.0; // Coordenada de destino en Y
float distX;           // Distancia a mover en eje­X
float distY;           // Distancia a mover en eje­X
float exponente = 0.5; // Determina el tipo de curva
float x = 0.0;
float y = 0.0;
float paso = 0.01;
float pct = 0.0;

void setup()
{
  size(100, 100);
  noStroke();
  smooth();
// Coordenada actual en X
// Coordenada actual en Y
// Tamaño de cada paso (0.0 a 1.0)
// Porcentaje recorrido (0.0 a 1.0)
  distX = destinoX - origenX;
  distY = destinoY - origenY;
}

void draw()
{
  fill(0, 2);
  rect(0, 0, width, height);
  pct += paso;
  if (pct < 1.0)
  {
    x = origenX + (pct * distX);
    y = origenY + (pow(pct, exponente) * distY);
  }
  fill(255);
  ellipse(x, y, 20, 20);
}
