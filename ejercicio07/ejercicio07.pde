// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 07                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

int option = 0;

void setup(){
  colorMode(RGB);
  size(300,300);
  noCursor();
  smooth();
}

void draw(){
  switch(option) {
    case 0:
      noFill();
      break;
    case 1:
      noStroke();
      fill(255,255,255);
      break;
    default:
      noStroke();
      fill(0,0,0);
      break;
  }
  ellipse(150,150,150,150);
}
