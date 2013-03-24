
void parseScore(String _gameDayStats) {
  
  // iVars
//  String sections[];
//  String scoreLine;
//  String score[];
  
  // Split String
  sections = split(_gameDayStats, ':');
  
  // Get Line With Score
  for(int i = 0; i < sections.length; i++) {
      
      // Print
      println(i);
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
  
  // Score
  for(int i = 0; i < score.length; i++) {
    if(score[i] != "\"atc\"") {
      println(score[i]); 
    }
  }
  
  
  
}
