
//--------------------------
// GET THE DATE
//--------------------------

String getDate() {
  day = day();
  month = month();
  if(verbose)  println("The Day Is " + day); 
  if(verbose)  println("The Month Is " + month); 
  
  currentDay = str(month) + "/" + str(day);
  
  if(verbose) println(currentDay);
 
  return currentDay; 
  
}
