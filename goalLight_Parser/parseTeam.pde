
void parseScore(String _gameDayStats) {
  
  // iVars
  String sections[];
  
  // Split
  sections = split(_gameDayStats, ':');
  //println(_gameDayStats);
  
  
  // Team
  for(int i = 0; i < sections.length; i++) {
      
      // Print
      println(i);
      println(sections[i]);  
      
  }
  
  
}
