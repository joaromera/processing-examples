float origenX = 20.0;  // Coordenada de origen en X
float origenY = 10.0;  // Coordenada de origen en Y
float destinoX = 70.0; // Coordenada de destino en X
float destinoY = 80.0; // Coordenada de destino en Y
float easing = 0.05;

void setup()
{
  size(100, 100);
  noStroke();
  smooth();
}

void draw()
{
  fill(0, 12);
  rect(0, 0, width, height);
  float d = dist(origenX, origenY, destinoX, destinoY);
  if (d > 1.0)
  {
    origenX += (destinoX - origenX) * easing;
    origenY += (destinoY - origenY) * easing;
  }
  fill(255);
  ellipse(origenX, origenY, 20, 20);
}
