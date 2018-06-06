// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 11                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

float fc;
int centro = 200;

void setup() {
  smooth();
  colorMode(RGB);
  size(400, 400);
  stroke(255);
}

void draw() {
  fc = frameCount;
  background(200);
  
  // Circulo en centro que crece
  fill(random(255));
  noStroke();
  ellipse(centro, centro, fc % 600, fc % 600);
  
  // Lineas rotativas
  stroke(255,0,0);
  strokeWeight(1);
  line(centro, centro, centro + cos(fc) * 300, centro - sin(fc) * 300);
  
  stroke(0,255,0);
  strokeWeight(1.5);
  line(centro, centro, centro + cos(fc) * 450, centro + sin(fc) * 800);
  
  stroke(0,0,255);
  strokeWeight(2);
  line(centro, centro, centro - cos(fc) * 400, centro - sin(fc) * 1200);
}
