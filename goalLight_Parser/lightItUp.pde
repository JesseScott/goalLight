
//--------------------------
// LIGHT THE LIGHT
//--------------------------

void lightItUp() {
  
  if(verbose) println("-- Turning On Arduino --");
  
  // Turn It On
  arduino.digitalWrite(13, Arduino.HIGH);
  
   // Store the fact that it's on
  bLightIO = true;
  
}

//--------------------------

void lightItDown() {
  
  if(verbose) println("-- Turning Off Arduino --");
  
  // Turn It Off
  arduino.digitalWrite(13, Arduino.LOW);
  
  // Store the fact that it's off
  bLightIO = false;
  
}
