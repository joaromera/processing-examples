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
boolean mouseSets = true;
boolean metro = false;
boolean oscONOFF = false;

void setup()
{
  frameRate(25);
  oscP5 = new OscP5(this,12001);
  myRemoteLocation = new NetAddress("localhost",12000);
  size(1000, 640);
  //fullScreen();
  mecanica = new Cinta(0.0, 300.0, 360.0, width / 2, height / 2, false);
}

void draw()
{
  background(bcolor);
  mecanica.calcular();
  mecanica.dibujar();
  bcolor /= 2;
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
  if (keyCode == 'm' || keyCode == 'M')
  {
    mouseSets = !mouseSets; 
  }
  if (keyCode == 't' || keyCode == 'T')
  {
    OscMessage clic = new OscMessage("/clic");
    metro = !metro;
    clic.add(metro); /* add an int to the osc message */
    oscP5.send(clic, myRemoteLocation);  
  }
  if (keyCode == 'o' || keyCode == 'O')
  {
    OscMessage oscON = new OscMessage("/oscON");
    oscONOFF = !oscONOFF;
    oscON.add(oscONOFF); /* add an int to the osc message */
    oscP5.send(oscON, myRemoteLocation);  
  }
}

void mousePressed()
{
  mecanica.distorsionar(); 
}
