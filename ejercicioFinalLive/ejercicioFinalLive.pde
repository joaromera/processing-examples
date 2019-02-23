// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio: Final                            *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2019                                   *
// ***********************************************

import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress myRemoteLocation;
Cinta mecanica;
float bcolor = 0;

void setup()
{
  frameRate(25);
  oscP5 = new OscP5(this,2346);
  myRemoteLocation = new NetAddress("localhost",12000);
  //size(1000, 640);
  noCursor();
  fullScreen();
  mecanica = new Cinta(0.0, 300.0, 360.0, width / 2, height / 2, false);
}

void draw()
{
  background(bcolor);
  mecanica.calcular();
  mecanica.dibujar();
  if (bcolor > 0) bcolor -= 6;
}

void keyPressed()
{
  if (keyCode == RIGHT)
  {
    mecanica.cambiarForma(10);
  }
  if (keyCode == LEFT)
  {
    mecanica.cambiarForma(-10);
  }
}

void mousePressed()
{
  mecanica.distorsionar(); 
}
