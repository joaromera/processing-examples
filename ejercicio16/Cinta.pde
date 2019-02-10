class Cinta
{
  int xpos;
  int ypos;
  float velocidad;
  float amplitud;
  float cantidad;
  float dx; // para incrementar en el calculo
  float[] ys; // valores de amplitud para la cinta
  boolean random;

  Cinta (float pVelocidad, float pAmplitud, float pCantidad, int pXpos, int pYpos, boolean pRandom)
  {
    ys = new float[width];  
    velocidad = pVelocidad;  // Start angle at 0
    amplitud = pAmplitud;  // Height of wave
    cantidad = pCantidad;  // How many pixels before the wave repeats
    xpos = pXpos;
    ypos = pYpos;
    random = pRandom;
  }

  void calcular()
  {
    if (!random)
    {
      velocidad += 0.02;
    } else
    {
      velocidad += random(-0.1, 0.1);
    }

    // Para cada x calcular un y segun la func sin
    float x = velocidad;
    dx = (TWO_PI / cantidad);
    for (int i = 0; i < ys.length; i++)
    {
      if (!random)
      {
        ys[i] = sin(x) * amplitud;
      } else
      {
        ys[i] = sin(x) * amplitud + random(10);
      }
      x+=dx;
    }
  }

  void dibujar()
  {
    noStroke();
    fill(255);
    
    // control de color y diametro de los circulos
    float cg = map(mouseX, 0, width, 0, 255);
    float cb = map(mouseY, 0, width, 0, 255);
    float d = map(mouseY, 0, width, 1, 50);
    
    // dibujar
    for (int x = 0; x < ys.length; x++)
    {
      if (random)
      {
        fill(random(255), random(255), random(255));
      }
      else
      {
        fill(255, cg, cb);
      }
      ellipse(sin(radians(x))*200 + xpos, ys[x] + ypos, d, d);
    }
  }

  void cambiarForma(int i)
  {
    cantidad += i;
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
