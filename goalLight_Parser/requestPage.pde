
//--------------------------
// SCRAPE THE DATA
//--------------------------

void requestPage(String _page) {
  println(" ---- This is the requestPage Data ---- \n"); 

  // Get Page  
  try{
    scores = loadStrings(_page);
    debug = "Got The Data... parsing ... parsing ... ";
  }
  catch(Exception e) {
    e.printStackTrace();
    println("Couldn't Connect... check your internet ??? ");
    debug =  "Couldn't Connect... check your internet ???";
  }
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
