
String getDate() {
  day = day();
  month = month();
  println("The Day Is " + day); 
  println("The Month Is " + month); 
  
  currentDay = str(month) + "/" + str(day);
  println(currentDay);
 
  return currentDay; 
  
}
