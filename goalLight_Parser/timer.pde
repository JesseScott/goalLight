
void checkTime() {
  //println(" ---- This is the Timer Data ---- \n");  
  
  // Get Current
  currentTime = (millis() / 1000) - lastTime;
  
  // Print
  if(millis() % 1000 == 0) {
    //println("Current Counter is " + currentTime);
  }
  
  // Reset
  if(currentTime > refreshTime) {
    println("Time To Refresh..."); 
    currentTime = millis() / 1000;
    println("CT " + currentTime);
    lastTime = currentTime;
  }
  
}
