
void requestPage(String _page) {
  
  // Get Page  
  String scores[] = loadStrings(_page);
 
  // Print
  for(int i = 0; i < scores.length; i++) {
    println("\nThis is the Page Result: \n****************\n"); 
    println(scores[i]); 
    println("");
  }
  
}
