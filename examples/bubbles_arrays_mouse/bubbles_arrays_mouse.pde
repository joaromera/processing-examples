Bubble[] bubbles = new Bubble[100];
int total = 0;

void setup()
{
  size(640,360);
  for (int i = 0; i < bubbles.length; ++i)
  {
    bubbles[i] = new Bubble(int(random(20,40)));
  }
}

void mousePressed()
{
  total++;
  if (total > bubbles.length)
  {
    total = bubbles.length;
  }
}

void keyPressed()
{
  total--;
  if (total < 0)
  {
    total = 0;
  }
}

void draw()
{
  background(255);
  for (int i = 0; i < total; ++i)
  {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}
