// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 01                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

void setup(){
  size(300,300);
  noCursor();
  smooth();
}

void draw(){
  // cuadrado central
  strokeWeight(2);
  rect(75,75,150,150);
  
  // circulos en esquinas
  strokeWeight(1);
  ellipse(0,0,215,215);
  ellipse(300,300,215,215);
  
  // dibujo rombo en el medio
  strokeWeight(2);
  strokeCap(ROUND);
  line(0,150,150,0);
  line(0,150,150,300);
  line(150,0,300,150);
  line(150,300,300,150);
}
