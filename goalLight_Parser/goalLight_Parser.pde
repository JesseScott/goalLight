
/*
 *  
 *  goalLight
 *  a project by Jesse Scott | www.jesses.co.tt
 *  an open-source software/hardware version of that commercial project by that beer company
 * 
 *  a) pull the data from the NHL website
 *  b) get the current score of your favourite team
 *  c) celebrate if it's a bigger number than the last time!
 *
 *  This work is licensed under the Creative Commons Attribution-NonCommercial-Repurcusssions 3.0 Unported License. 
 *  To view a copy of this license, visit http://www.graffitiresearchlab.fr/?portfolio=attribution-noncommercial-repercussions-3-0-unported-cc-by-nc-3-0
 * 
 *  
 */

//--------------------------
// IMPORTS
//--------------------------

import cc.arduino.*;
import processing.serial.*;


//--------------------------
// DECLARATIONS
//--------------------------

Arduino arduino;


//--------------------------
// GLOBAL VARIABLES
//--------------------------

// Page To Load
String scoreboard = "http://live.nhle.com/GameData/RegularSeasonScoreboardv3.jsonp?loadScoreboard=?";
String scores[];

// Favourite Team
String favouriteTeam = "Vancouver";
String otherTeam;

// Current Game
String game[];
String sections[];
String scoreLine;
String opponentLine;
String score[];

// Score
int lastScore;
int currentScore;
int otherScore;

// Day
String currentDay;
int day;
int month;
Boolean currentlyPlaying;

// Timer
int refreshTime;
int currentTime;
int lastTime;

// Screen
PFont font;
String debug;
boolean goal;

// Messages
boolean verbose = false;

//--------------------------
// SETUP
//--------------------------

void setup() {
  // Screen
  size(400, 400);
  fill(255);
  smooth();
  
  // Font 
  font = loadFont("Serif-48.vlw");
  textFont(font);
  textSize(24);
  
  
  // Arduino
  if(verbose) println("There Are These Devices Available:");
  if(verbose) println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[5], 57600);
  arduino.pinMode(13, Arduino.OUTPUT);
  
  // Date
  getDate();

  // Timer
  refreshTime = 12; // 2 minutes
  currentTime = millis() / 1000;
  lastTime = currentTime;
  if(verbose) println(" ---- The Current Time Is " + str(hour()) + ":" + str(minute()) + ":" + str(second()) + " ----- \n"); 
  
  // Request
  lastScore = currentScore;
  requestPage(scoreboard);
  
  if(verbose) println("");
  if(verbose) println(" -- END OF SETUP -- ");
  if(verbose) println("");
  
}

//--------------------------
// DRAW
//--------------------------

void draw() {
  // Screen
  if(goal) {
    background(255, 0, 0); 
  }
  else {
    background(0);
  }
  
  // Update The Timer
  checkTime();
  
  // Draw
  text("Tracking The Score for " + favouriteTeam, 25, 25);
  text("Current Score: " + currentScore, 25, 75);
  text("Seconds Until Refresh: " + (refreshTime - currentTime), 25, 100);
  
  text(debug, 25, 300);
  
}
