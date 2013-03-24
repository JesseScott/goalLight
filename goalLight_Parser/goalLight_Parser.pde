
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
int refreshTime;
int currentTime;
int lastTime;

// Font
PFont font;


void setup() {
  // Screen
  size(400, 400);
  fill(255);
  smooth();
  
  // Font 
  font = loadFont("Serif-48.vlw");
  textFont(font);
  
  // Date
  getDate();

  // Timer
  refreshTime = 120; // 2 minutes
  currentTime = millis() / 1000;
  lastTime = currentTime;
  println(" ---- The Current Time Is " + str(hour()) + ":" + str(minute()) + ":" + str(second()) + " ----- \n"); 
  
  // Request
  requestPage(scoreboard);
  
  
}



void draw() {
  // Screen
  background(0);
  
  //
  checkTime();
  
  // Draw
  text("Counter: " + currentTime, 100, 100);
  
}
