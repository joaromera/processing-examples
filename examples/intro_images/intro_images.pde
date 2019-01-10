PImage goku;

void setup()
{
  size(600,400);
  goku = loadImage("goku.png");
  //loadPixels();
  //for (int i = 0; i < pixels.length; i++)
  //{
  //  pixels[i] = color(random(255),0,100);
  //}
  //updatePixels();
}

void draw()
{
  background(0);
  imageMode(CENTER);
  image(goku,mouseX,mouseY);
}
