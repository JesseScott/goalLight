
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
int day;
int month;
Boolean currentlyPlaying;

//
  String sections[];
  String scoreLine;
  String score[];

// Timer

void setup() {
  // Screen
  
  // Date
  getDate();
  
  // Request
  requestPage(scoreboard);
  
  // Parse
  
  
}



void draw() {
  
  
  
}
