class Cinta
{
  int xpos; int ypos;
  int r; int g; int b;
  float d;
  float velocidad;
  float amplitud;
  float cantidad;
  float dx;            // para incrementar en el calculo
  float[] ys;          // valores de amplitud para la cinta
  boolean random;
  int timer;
  int hastadonde;
  
  Cinta (float pVelocidad, float pAmplitud, float pCantidad, int pXpos, int pYpos, boolean pRandom)
  {
    r = 255;
    g = 0;
    b = 0;
    d = 1;
    ys = new float[2*width];
    hastadonde = ys.length;
    velocidad = pVelocidad;    // angulo
    amplitud = pAmplitud;      // amplitud de los valores y
    cantidad = pCantidad;      // pixeles hasta repetir la onda
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

    // Para cada x calcular un y segun func sin
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
    
    // dibujar
    for (int x = 0; x < hastadonde; x++)
    {
      if (random)
      {
        fill(random(255), random(255), random(255));
      }
      else
      {
        fill(r, g, b);
      }
      if (mousePressed || millis() - timer < 120)
      {
        ellipse(sin(radians(x))*360 + xpos + random(-5,5), ys[x] + ypos + random(-5,5), d, d);
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
  
  void setColor(int pR, int pG, int pB)
  {
    r = pR;
    g = pG;
    b = pB;
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
  
  void diametro(float x)
  {
    d = x;
  }
  
  void setHastaDonde()
  {
    hastadonde = (int) random(ys.length);
  }
  
  void changeRandom()
  {
    random = !random;
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
