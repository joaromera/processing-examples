void setup(){
  size(640, 360);
  background(102);
  smooth();
}
void draw() {
  elipseVariable(mouseX, mouseY, pmouseX, pmouseY);
}
// elipseVariable() calcula la velocidad del ratón.
// Si el ratón se mueve lentamente: dibuja una elipse pequeña,
// si el ratón se mueve rápidamente: dibuja una elipse mayor si
void elipseVariable(int x, int y, int px, int py) {
  float speed = abs(x-px) + abs(y-py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}
