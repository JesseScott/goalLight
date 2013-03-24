
void parseScore(String _gameDayStats) {
  println(" ---- This is the parseScore Data ---- \n"); 

  // Split String
  sections = split(_gameDayStats, ':');
  
  // Get Line With Score
  for(int i = 0; i < sections.length; i++) {
      // Print
      println(sections[i]);  
      
      // Set Line With Score
      if(sections[i].contains(favouriteTeam)) {
         // Set Line
         scoreLine = sections[i+2];
         // Parse
         score = split(scoreLine, ',');
      }
      println("");
  }
  
  // Score Section
  for(int i = 0; i < score.length; i++) {
    if(score[i] != "\"atc\"") {
      println(score[i]);
      // Trim The Score
      String tempScore = score[0].substring(1, 2);
      // Assign It To Our Global int
      currentScore = int(tempScore);
    }
  }
  
  // Print
  println("The Current Score For " + favouriteTeam + " is " + str(currentScore));

  
  
  
}
