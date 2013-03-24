
// Global Variables

// Page To Load
String scoreboard = "http://live.nhle.com/GameData/RegularSeasonScoreboardv3.jsonp?loadScoreboard=?";
String scores[];

// Favourite Team
String favouriteTeam = "Vancouver";

// Current Game
String game[];
String sections[];
String scoreLine;
String score[];

// Score
int lastScore;
int currentScore;

// Day
String currentDay;
int day;
int month;
Boolean currentlyPlaying;



// Timer

void setup() {
  // Screen
  size(400, 400);
  
  // Date
  getDate();
  
  // Request
  requestPage(scoreboard);

  
  
}



void draw() {
  
  
  
}
