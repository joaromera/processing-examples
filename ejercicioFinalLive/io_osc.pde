float testMin   = 0;
float testMax   = 0;
int pulsesMin = 0;
int pulsesMax = 0;
int inputMin  = 0;
int inputMax  = 0;
int eraserVelocity = 0;
int drumVelocity = 0;
int fillVelocity = 0;
int subLowVelocity = 0;

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage)
{

  // Distorsión con el 'riff' principal
  if (theOscMessage.checkAddrPattern("/EraserVelocity1")==true)
  {
    eraserVelocity = theOscMessage.get(0).intValue();
  }
  
  if(theOscMessage.checkAddrPattern("/Eraser1")==true && eraserVelocity > 0)
  {
    println(theOscMessage.get(0).intValue());
    mecanica.distorsionarTimer();
  }
  
  // Controles de la bateria
  if (theOscMessage.checkAddrPattern("/DrumVelocity1")==true)
  {
    drumVelocity = theOscMessage.get(0).intValue();
  }
  
  if(theOscMessage.checkAddrPattern("/Drum1")==true && drumVelocity > 0)
  {
    println(theOscMessage.get(0).intValue());
    if (theOscMessage.get(0).intValue() == 37) mecanica.cambiarFormaOsc((int) random(1000));
    if (theOscMessage.get(0).intValue() == 38) mecanica.changeRandom();
    if (theOscMessage.get(0).intValue() == 38) mecanica.setColor((int) random(1000),(int) random(1000),(int) random(1000));
  }
  
  // Controles del 'fill'
  if (theOscMessage.checkAddrPattern("/FillVelocity1")==true)
  {
    fillVelocity = theOscMessage.get(0).intValue();
  }
  if (theOscMessage.checkAddrPattern("/Fill1")==true && fillVelocity > 0)
  {
    mecanica.setHastaDonde();
    mecanica.diametro(random(1,15));
  }
  
  // Sublow para cambiar el fondo
  if (theOscMessage.checkAddrPattern("/SubLowVelocity1")==true)
  {
    subLowVelocity = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/SubLow1")==true && subLowVelocity > 0)
  {
    if (theOscMessage.get(0).intValue() == 36) bcolor = 64;
  }
  
  /* print the address pattern and the typetag of the received OscMessage */
  //print("### received an osc message.");
  //print(" addrpattern: "+theOscMessage.addrPattern());
  //println(" typetag: "+theOscMessage.typetag());
}
