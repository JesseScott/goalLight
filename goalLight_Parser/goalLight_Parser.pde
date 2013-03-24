
// Global Variables

// Page To Load
String scoreboard = "http://live.nhle.com/GameData/RegularSeasonScoreboardv3.jsonp?loadScoreboard=?";
String scores[];

// Favourite Team
String favouriteTeam = "Vancouver";
String team[];

// Score
int lastScore;
int currentScore;

// Day
String currentDay;
Boolean currentlyPlaying;

// Timer

void setup() {
  // Screen
  
  // Date
  getDay();
  
  // Request
  requestPage(scoreboard);
  
  // Parse
  
  
}



void draw() {
  
  
  
}
