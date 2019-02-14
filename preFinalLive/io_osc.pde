//void draw() {
//  background(0); 
//  OscMessage posx = new OscMessage("/posx");
//  posx.add(mouseX); /* add an int to the osc message */
//  oscP5.send(posx, myRemoteLocation); 

//  OscMessage posy = new OscMessage("/posy");
//  posy.add(mouseY); /* add an int to the osc message */
//  oscP5.send(posy, myRemoteLocation); 

//}

//void mousePressed() {
//  /* in the following different ways of creating osc messages are shown by example */
//  OscMessage myMessage = new OscMessage("/clic");

//  myMessage.add(1); /* add an int to the osc message */

//  /* send the message */
//  oscP5.send(myMessage, myRemoteLocation); 
//}

//void mouseReleased() {
//    OscMessage myMessage = new OscMessage("/clic");

//  myMessage.add(0); /* add an int to the osc message */

//  /* send the message */
//  oscP5.send(myMessage, myRemoteLocation);
//}

float testMin   = 0;
float testMax   = 0;
int pulsesMin = 0;
int pulsesMax = 0;
int inputMin  = 0;
int inputMax  = 0;
int velocity1 = 0;

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage)
{
  if(theOscMessage.checkAddrPattern("/metro")==true)
  {
    mecanica.cambiarFormaOsc((int) random(1000));
  }
  
  if (theOscMessage.checkAddrPattern("/Velocity1")==true)
  {
    velocity1 = theOscMessage.get(0).intValue();
  }
  
  if(theOscMessage.checkAddrPattern("/Note1")==true && velocity1 > 0)
  {
    println(theOscMessage.get(0).intValue());
    mecanica.distorsionarTimer();
  }
  
  if(theOscMessage.checkAddrPattern("/input")==true)
  {
    float value = theOscMessage.get(0).floatValue();
    bcolor = (bcolor + map(value, 8, 12, 0, 63)) / 4;
  }
  
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}
