// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 06                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

boolean condicion = false;

void setup(){
  size(300,300);
  noCursor();
  smooth();
}

void draw(){
  line(0,150,300,150);
  
  if (condicion) {
    fill(0);
  } else {
    fill(255,255,255);
  }
  noStroke();
  ellipse(150,150,150,150);
}
