
//--------------------------
// PARSE THE CURRENT SCORE
//--------------------------

void parseScore(String _gameDayStats) {
  if(verbose) println(" ---- This is the parseScore Data ---- \n"); 

  // Split String
  sections = split(_gameDayStats, ':');
  
  // Message
  debug = "... parsing...";
  
  // Get Line With Score
  for(int i = 0; i < sections.length; i++) {
      // Print
      if(verbose) println(sections[i]);  
      
      // Set Line With Score
      if(sections[i].contains(favouriteTeam)) {
         // Set Line With Score
         scoreLine = sections[i+2];
         // Home
         if(sections[i].contains("htv")) {
           otherTeam = sections[i-4];
         }
         // Away
         else if(sections[i].contains("atv")) {
           otherTeam = sections[i+4];
         }
         // Parse
         score = split(scoreLine, ',');
      }
      if(verbose) println("");
  }
  
  // Score Section
  for(int i = 0; i < score.length; i++) {
    if(score[i] != "\"atc\"") {
      if(verbose) println("Keeping This Line: " + score[i]);
      // Trim The Score
      String tempScore = score[0].substring(1, 2);
      // Assign It To Our Global int
      currentScore = int(tempScore);
    }
  }
  
  // Print
  if(verbose) println("");
  if(verbose) println("The Current Score For " + favouriteTeam + " is " + str(currentScore));

  // Message
  debug = "... calculating...";
  
  // Did They Score ???
  if(currentScore > lastScore) {
    if(verbose) println("");
    if(verbose) println("GGGOOAAAAAALLLLLL!!!!!!"); 
    if(verbose) println("");
    goal = true;
    refreshTime = 30;
  }
  else {
    if(verbose) println("");
    if(verbose) println("No Goal :-( "); 
    if(verbose) println(""); 
    goal = false;
    refreshTime = 12;
  }

  // Store Score
  lastScore = currentScore;
  
  
}
