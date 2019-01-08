// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 14                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

void setup()
{
  size(800, 200);
  stroke(255, 0, 0);
  strokeWeight(1);
  smooth();
}

void draw()
{
  background(255);
  translate(0, height / 2);
  for (int i = 0; i < width - 1; i++)
  {
    wave(i, 80);  
  }
}

void wave(int x, float size)
{
  line(x, size * sin(random(50)), x + 1, size * sin(random(50)));
}
