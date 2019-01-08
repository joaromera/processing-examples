float x = 50.0;
float y = 80.0;

void setup()
{
  size(100, 100);
  randomSeed(0);
  background(0);
  stroke(255);
}

// coordenada X
// coordenada Y
// Fuerza los mismos valores aleatorios
void draw()
{
  x += random(-2, 2);  // Asigna nueva coordenada X
  y += random(-2, 2);  // Asigna nueva coordenada Y
  point(x, y);
}
