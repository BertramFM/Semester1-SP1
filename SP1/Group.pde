class Group {
  String name;
  String[] teamName;
  PImage[] teamFlag;
  float x; 
  float y;
  int boxW = 470;
  int boxH = 40;
  
  
  
  Group() {
    rect(0, 30, 470, 40);
    rect(0, 75, 470, 40);
    rect(0, 120, 470, 40);
    rect(0, 165, 470, 40);
  }
}
