
//--------------------------
// DRAW THE TEXT
//--------------------------

void drawText() {
  
  // Base
  fill(255);
  text("Tracking The Score for:", 25, 50);
  text("Current Score:", 25, 100);
  text("Seconds Until Refresh:", 25, 125);
  
  // Variables
  if(!goal) fill(255, 0, 0);
  text(favouriteTeam, 275, 50);
  text(currentScore, 275, 100);
  text(refreshTime - currentTime, 275, 125);
  
  
  // 
  if(bWaiting) {
    fill(255); 
  }
  else {
    fill(155); 
  }
  text(waiting, 25, 300);
  
    // 
  if(bGotten) {
    fill(255);
  }
  else {
    fill(155); 
  }
  text(gotten, 25, 325);
  
  // 
  if(bParsing) {
    fill(255);
  }
  else {
    fill(155); 
  }
  text(parsing, 25, 350);
  
  // 
  if(bCalculating) {
    fill(255); 
  }
  else {
    fill(155); 
  }
  text(calculating, 25, 375);
  
}
