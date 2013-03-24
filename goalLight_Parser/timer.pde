
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
    println("Time To Refresh..."); 
    
    // Reset
    currentTime = millis() / 1000;
    println("CT " + currentTime);
    lastTime = currentTime;
    
    // Refresh Data
    println("Requesting Data... "); 
    requestPage(scoreboard);
  }
  
}
