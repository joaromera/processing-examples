// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 08                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

void setup(){
  colorMode(HSB);
  size(300,300);
  noCursor();
  smooth();
}

void draw(){
  
  // Fondo
  for (int i = 0; i < 300; i++) {
    stroke(i*0.1, 255, 255);
    line(i, 0, i, 300);
  }
  
  // Cuadrados concentricos
  for (int i = 0; i < 8; i++) {
    rectMode(CENTER);
    rect(150, 150, 80 - 10 * i, 80 - 10 * i);
  }
}
