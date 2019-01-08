float x = 0.0;
float y = 50.0;
float angulo = 0.0;
float velocidad = 0.5; // Velocidad de movimiento

void setup()
{
  size(100, 100);
  background(0);
  stroke(255, 130);
  randomSeed(121);
}

void draw()
{
// Fuerza los mismos valores aleatorios
  angulo += random(-0.3, 0.3);
  x += cos(angulo) * velocidad; // Asigna nueva coordenada X
  y += sin(angulo) * velocidad; // Asigna nueva coordenada Y
  translate(x, y);
  rotate(angulo);
  line(0, -10, 0, 10);
}
