class Cinta
{
  int xpos;
  int ypos;
  int r;
  int g;
  int b;
  float d; // diametro
  float velocidad;
  float amplitud;
  float cantidad;
  float dx; // para incrementar en el calculoa
  float[] ys; // valores de amplitud para la cinta
  boolean random;
  int timer;
  
  Cinta (float pVelocidad, float pAmplitud, float pCantidad, int pXpos, int pYpos, boolean pRandom)
  {
    r = 255;
    g = 0;
    b = 0;
    ys = new float[width];  
    velocidad = pVelocidad;  // Start angle at 0
    amplitud = pAmplitud;  // Height of wave
    cantidad = pCantidad;  // How many pixels before the wave repeats
    xpos = pXpos;
    ypos = pYpos;
    random = pRandom;
    timer = 0;
  }

  void calcular()
  {
    if (random)
    {
      velocidad += random(-0.1, 0.1);
    }
    else
    {
      velocidad += 0.02;
    }

    // Para cada x calcular un y segun la func sin
    float x = velocidad;
    dx = (TWO_PI / cantidad);
    for (int i = 0; i < ys.length; i++)
    {
      if (random)
      {
        ys[i] = sin(x) * amplitud + random(10);
      } 
      else
      {
        ys[i] = sin(x) * amplitud;
      }
      x+=dx;
    }
  }

  void dibujar()
  {
    noStroke();
    // control de color y diametro de los circulos
    if (mouseSets)
    {
      g = (int) map(mouseX, 0, width, 0, 255);
      b = (int) map(mouseY, 0, width, 0, 255);
      d = map(mouseY, 0, width, 1, 50); // diametro
    }
    
    // dibujar
    for (int x = 0; x < ys.length; x++)
    {
      if (random)
      {
        fill(random(255), random(255), random(255));
      }
      else
      {
        fill(r, g, b);
      }
      if (mousePressed || millis() - timer < 100)
      {
        ellipse(sin(radians(x))*360 + xpos + random(-10,10), ys[x] + ypos + random(-10,10), d, d);
      }
      else
      {
        ellipse(sin(radians(x))*360 + xpos, ys[x] + ypos, d, d);  
      }   
    }
  }

  void cambiarForma(int i)
  {
    cantidad += i;
  }

  void cambiarFormaOsc(float i)
  {
    cantidad = i;
  }
  
  void cambiarColorOsc(float i)
  {
    r = (int) map(i, 8, 13, 0, 255);
    g = (int) map(i, 8, 13, 0, 255);
    b = (int) map(i, 8, 13, 0, 255);
  }
  
  void distorsionar()
  {
    for (int x = 0; x < ys.length; x++)
    {
      ys[x] *= random(-20,20);
    }
  }
  
  void distorsionarTimer()
  {
    timer = millis();
  }
  
  void setBlue(int x)
  {
    b = (int) map(x, 0, 127, 0, 255);
  }
  
  void setGreen(int x)
  {
    g = (int) map(x, 0, 127, 0, 255);
  }
  
  void imprimir()
  {
    println(xpos);
    println(ypos);
    println(velocidad);
    println(amplitud);
    println(cantidad);
    println(dx);
    println(random);
    println(cantidad);
  }
};
