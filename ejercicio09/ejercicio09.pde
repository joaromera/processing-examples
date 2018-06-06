// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 09                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

float x;
float y;
float w;
float h;
float r;
float g;
float b;

void setup(){
  colorMode(HSB);
  background(0);
  size(300,300);
  noCursor();
  smooth();
}

void draw(){
  randomSeed(6); // elijo una semilla
  for (int i = 0; i < 10; i++) {
    noFill();
    // asigno valores aleatorios
    x = random(400);
    y = random(400);
    w = random(400);
    h = random(400);
    r = random(255);
    g = random(255);
    b = random(255);
    
    // dibujo elipses con esos parametros
    strokeWeight(0.25);
    stroke(r,g,b);
    ellipse(x,y,w,h);
  }
}
