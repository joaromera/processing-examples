// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 03                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

void setup(){
  colorMode(HSB,360,100,100,100);
  background(200,100,100);
  size(300,300);
  noCursor();
  smooth();
}

void draw(){
  // Rectangulo central
  stroke(200,100,100);
  fill(205,105,105);
  rect(75,0,150,300);
  
  // Lineas para que parezca que parten el rectangulo
  stroke(200,100,100);
  fill(100,200,100);
  line(109,21,225,150);
  
  stroke(200,100,100);
  fill(100,200,100);
  line(75,150,196,286);
  
  // Elipses
  stroke(200,100,100);
  fill(90,90,90);
  ellipse(75,75,100,150);
  
  stroke(200,100,100);
  fill(90,90,90);
  ellipse(225,225,100,150);
  
  // Lineas completan el rectangulo pero desfasadas
  strokeWeight(2.1);
  stroke(200,100,100);
  fill(100,200,100);
  line(79,0,79,149);
  
  stroke(200,100,100);
  fill(100,200,100);
  line(220,150,220,300);
}
