// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 16                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************
int xy=0;
int direction = 1;
int xr=0;
void setup()
{
  size(800, 200);
  stroke(255, 0, 0);
  strokeWeight(5);
  smooth();
  randomSeed(0);
}

void draw()
{
  background(255);
  translate(0, height/2);
  xy += 1 * direction;
  xr += (1 * direction) + random(-2,2);
  wave(xy, 50.0);
  if (xy >= width) direction *= -1;
  if (xy < 0) direction *= -1;
  
  //point(xr, (50 + xr) * sin(frameCount / 40.f));
}

void wave(int x, float size)
{
  point(x, size * sin(frameCount / 40.f));
  point(x + random(-10,10), size * sin(frameCount / 40.f) + random(-10,10));
  point(x + random(-10,10), size * sin(frameCount / 40.f) + random(-10,10));
  point(x + random(-10,10), size * sin(frameCount / 40.f) + random(-10,10));
  point(x + random(-10,10), size * sin(frameCount / 40.f) + random(-10,10));
}
