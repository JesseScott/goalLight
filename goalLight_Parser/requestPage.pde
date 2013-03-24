
//--------------------------
// SCRAPE THE DATA
//--------------------------

void requestPage(String _page) {
  println(" ---- This is the requestPage Data ---- \n"); 

  // Get Page  
  scores = loadStrings(_page);
 
  // Print
  for(int i = 0; i < scores.length; i++) {
    // Base Text Result
    println(scores[i]); 
    println("");
    
    // Split
    game = split(scores[i], '{');
    println("Split Into " + game.length + " Sections...");
    println("");
    
  }
  
  // Team
  for(int i = 0; i < game.length; i++) {
    if(game[i].contains(favouriteTeam)) {
      
      // Print
      println("Taking Section #" + i);
      println(game[i]);
      println("");
      // Pass To Parser
      parseScore(game[i]);
      
      // Break (to not get next game)
      break;
    } 
  }
  
}
