// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 16                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2019                                   *
// ***********************************************

Cinta mecanica;
Cinta organica;

void setup()
{
  //size(1000, 640);
  fullScreen();
  mecanica = new Cinta(0.0, 300.0, 500.0, width / 4, height / 2, false);
  organica = new Cinta(0.0, 300.0, 500.0, width / 4 * 3, height / 2, true);
}

void draw()
{
  background(0);
  mecanica.calcular();
  mecanica.dibujar();
  organica.calcular();
  organica.dibujar();
}

void mousePressed()
{
  if (mouseButton == LEFT)
  {
    mecanica.cambiarForma(10);
    organica.cambiarForma(10);
  }
  else
  {
    mecanica.cambiarForma(-10);
    organica.cambiarForma(-10);
  }
  mecanica.imprimir();
}
