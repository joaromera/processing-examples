// ***********************************************
// * Alumno: Joaquin Romera                      *
// * Legajo: 24169                               *
// * Ejercicio Nro: 10                           *
// * Asignatura: Taller de Integración de tecno..*
// * Carrera: Musica y Tecnologia                *
// * Institución: UNQ                            *
// * Año: 2018                                   *
// ***********************************************

void setup(){
  colorMode(HSB);
  background(100);
  size(400,400);
  noCursor();
}

void draw(){
  randomSeed(10);
  for (int i = 0; i < 10; i++) {
    noFill();
    float x = random(0,300);
    float y = random(0,210);
    float w = random(100,150);
    float h = random(100,150);
    float r = random(125,175);
    float g = random(125,175);
    float b = random(125,175);
    stroke(r,g,b);
    rect(x,y,w,h);
  }
  
}
