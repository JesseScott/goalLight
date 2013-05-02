
//--------------------------
// KEEP THE TIME
//--------------------------

void checkTime() {
  //println(" ---- This is the Timer Data ---- \n");  
  
  // Get Current
  currentTime = (millis() / 1000) - lastTime;
  
  // Print
  if(millis() % 1000 == 0) {
    //println("Current Counter is " + currentTime);
  }
  
  // Time To Reset ???
  if(currentTime > refreshTime) {
    if(verbose) println("Time To Refresh..."); 
    
    // Reset
    currentTime = millis() / 1000;
    if(verbose) println("CT " + currentTime);
    lastTime = currentTime;
    
    // Refresh Data
    if(verbose) println("Requesting Data... "); 
    requestPage(scoreboard);
  }
  
}
