// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 04                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

int red = 200;
int green = 100;
int blue = 100;

int masRojo = red + 5;
int masVerde = green + 5;
int masAzul = blue + 5;

int offset = 5;

void setup(){
  colorMode(HSB,360,100,100,100);
  background(red,green,blue);
  size(300,300);
  noCursor();
  smooth();
}

void draw(){
  // Rectangulo central
  stroke(red,green,blue);
  fill(masRojo,masVerde,masAzul);
  rect(75,0,150,300);
  
  // Lineas
  stroke(red,green,blue);
  fill(100,200,100);
  line(109,21,225,150);
  
  stroke(red,green,blue);
  fill(100,200,100);
  line(75,150,196,286);
  
  // Elipses
  noStroke();
  fill(red - offset,green - offset,blue - offset);
  ellipse(75,75,100,150);
  
  noStroke();
  fill(red - offset,green - offset,blue - offset);
  ellipse(225,225,100,150);
  
  // Lineas
  stroke(200,100,100);
  fill(100,200,100);
  line(79,0,79,149);
  
  stroke(200,100,100);
  fill(100,200,100);
  line(220,150,220,300);
}
