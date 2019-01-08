import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
  PeasyCam cam;
  float x,y,z;  
void setup(){
  size(800,800,P3D);
  cam = new PeasyCam(this,100);
    x=random(-800,800);
    y=random(-800,800);
    z=random(-800,800);
}
void draw(){
  int n=0,p;
  background(0);
  stroke(255);
  strokeWeight(2);
  point(800,0,-800/sqrt(2));
  point(-800,0,-800/sqrt(2));
  point(0,800,800/sqrt(2));
  point(0,-800,800/sqrt(2));
  point(x,y);
  while(n<20000)
  {
    p=int(random(1,5));    
    if(p==1)
    {
    x=(x+800)/2;
    y=(y)/2;
    z=(z-800/sqrt(2))/2;
    }
    else if(p==2)
    {
    x=(x-800)/2;
    y=(y)/2;
    z=(z-800/sqrt(2))/2;
    }
    else if(p==3)
    {
    x=(x)/2;
    y=(y+800)/2;
    z=(z+800/sqrt(2))/2;   
    }
    else
    {
    x=(x)/2;
    y=(y-800)/2;
    z=(z+800/sqrt(2))/2;
    }
    point(x,y,z);
    n++;
  }
}
