
int xspacing = 1;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave

float velocidad = 0.0;  // Start angle at 0
float amplitude = 300.0;  // Height of wave
float period = 500.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Using an array to store height values for the wave

void setup()
{
  size(800, 640);
  yvalues = new float[width];
}

void draw() {
  background(0);
  translate(width/2,height/2);
  calcWave();
  dibujar();
}

void calcWave()
{
  // Increment theta (try different values for 'angular velocity' here
  velocidad += 0.02;

  // For every x value, calculate a y value with sine function
  float x = velocidad;
  dx = (TWO_PI / period);
  //print(mouseX);
  for (int i = 0; i < yvalues.length; i++)
  {
    yvalues[i] = sin(x) * amplitude;
    x+=dx;
  }
}

void dibujar()
{
  noStroke();
  fill(255);
  float cg = map(mouseX, 0, width, 0, 255);
  float cb = map(mouseY, 0, width, 0, 255);
  float d = map(mouseY, 0, width, 1, 50);
  for (int x = 0; x < yvalues.length; x++)
  {
    fill(255, cg, cb);
    ellipse(sin(radians(x))*200, yvalues[x], d, d);
  }
}
