// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 12                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

float x;
float y;
float ix;
float iy;

void setup() {
  size(500, 500);
  smooth();
  noStroke();
}
void draw() {
  x = mouseX;
  y = mouseY;
  ix = width - mouseX; // Inverso de X
  iy = height - mouseY; // Inverso de Y
  
  /**
  la posicion horizontal del mouse determina
  el gris del fondo en un rango acotado
  **/
  background(map(mouseX,0,500,50,200));
  
  // para c/u se posicione delante de otro cuando es mas grande
  if (iy > y){
    // circulo gris diagonal
    fill(220);
    ellipse(ix, x, y / 2, y / 2);
    
    // circulo blanco
    fill(255);
    ellipse(x, height/2, y / 2, y / 2);
    
    // circulo negro
    fill(0);
    ellipse(ix, height/2, iy / 2, iy / 2);
  } else {
    // circulo negro
    fill(0);
    ellipse(ix, height/2, iy / 2, iy / 2);
    
    // circulo blango
    fill(255);
    ellipse(x, height/2, y / 2, y / 2);
    
    // circulo gris diagonal
    fill(220);
    ellipse(ix, x, y / 2, y / 2);
  }
}
