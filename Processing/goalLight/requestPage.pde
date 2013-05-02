
//--------------------------
// SCRAPE THE DATA
//--------------------------

void requestPage(String _page) {
  if(verbose) println(" ---- This is the requestPage Data ---- \n"); 

  // Get Page  
  try{
    scores = loadStrings(_page);
    bGotten = true;
    bWaiting = false;
  }
  catch(Exception e) {
    e.printStackTrace();
    if(verbose) println("Couldn't Connect... check your internet ??? ");
  }
  // Print
  for(int i = 0; i < scores.length; i++) {
    // Base Text Result
    if(verbose) println(scores[i]); 
    if(verbose) println("");
    
    // Split
    game = split(scores[i], '{');
    if(verbose) println("Split Into " + game.length + " Sections...");
    if(verbose) println("");
    
  }
  
  // Team
  for(int i = 0; i < game.length; i++) {
    if(game[i].contains(favouriteTeam)) {
      
      // Print
      if(verbose) println("Taking Section #" + i);
      if(verbose) println(game[i]);
      if(verbose) println("");
      
      // Test For Live Game
      if(game[i-2].contains("LIVE")) {
        // Pass To Parser
        parseScore(game[i]);
        
        // Break (to not get next game)
        break;
      }
  
    } 
  }
  
}
