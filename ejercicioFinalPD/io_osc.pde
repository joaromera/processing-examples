float testMin   = 0;
float testMax   = 0;
int pulsesMin = 0;
int pulsesMax = 0;
int inputMin  = 0;
int inputMax  = 0;

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage)
{
  if(theOscMessage.checkAddrPattern("/metro")==true)
  {
    mecanica.cambiarFormaOsc((int) random(1000));
  }
  
  if(theOscMessage.checkAddrPattern("/pulses")==true)
  {
    mecanica.distorsionarTimer();
  }
  
  // cambia el fondo según el nivel del input
  if(theOscMessage.checkAddrPattern("/input")==true)
  {
    float value = theOscMessage.get(0).floatValue();
    bcolor = (bcolor + map(value, 8, 12, 0, 63)) / 4;
  }
  
  // cambia el componente azul
  if(theOscMessage.checkAddrPattern("/blue")==true)
  {
    int value = theOscMessage.get(0).intValue();
    if (!mouseSets) mecanica.setBlue(value);
  }
  
  // cambia el componente verde
  if(theOscMessage.checkAddrPattern("/green")==true)
  {
    int value = theOscMessage.get(0).intValue();
    if (!mouseSets) mecanica.setGreen(value);
  }
  
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}
