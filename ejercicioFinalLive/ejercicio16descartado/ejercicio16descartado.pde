int x;
void setup()
{
  size(300,300);
  strokeWeight(1);
  smooth();
}

void draw()
{
  //if (x<360) {x++;}
  x++;
  pushMatrix();
  translate(width/2,height/2);// bring zero point to the center 
  stroke(0);
  point (sin(radians(x))*100,cos(radians(x))*100 + sin(x)*10);
  point (cos(radians(x))*50,sin(radians(x))*50 + sin(x)*5);
  //point (sin(radians(x))*25,cos(radians(x))*25);
  stroke(255);
  //point (sin(radians(x))*50,cos(radians(x))*25);//<ellipse
  popMatrix();
}
