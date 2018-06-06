// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 02                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

void setup(){
  size(300,300);
  noCursor();
  background(0);
  smooth();
}

void draw(){
  // Lineas rojas que cruzan al centro del cuadro
  strokeWeight(0.25);
  stroke(255,0,0);
  line(0,0,300,300);
  line(0,300,300,0);
  
  // circulos
  strokeWeight(1);
  stroke(0,0,0);
  fill(0,30,0);
  ellipse(150,0,208,208);
  fill(0,0,60);
  ellipse(150,300,208,208);
  
  // rectangulo en el centro de la imagen
  stroke(255,0,0);
  fill(20,0,0);
  rect(-1,106,301,87);

  // lineas internas del rectangulo
  strokeCap(ROUND);
  strokeWeight(0.8);  
  stroke(0,255,0);
  line(-1,160,301,160);
  stroke(0,0,255);
  line(-1,140,301,140);
}
