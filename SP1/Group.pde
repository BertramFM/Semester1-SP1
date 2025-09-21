class Group {
  String groupName;
  String[] teamName;
  PImage[] teamFlag;
  float x;
  float y;
  int boxW = 470;
  int boxH = 36;

  Group(String groupName, String[] teamName, PImage[] teamFlag, float x, float y) {
    this.groupName = groupName;
    this.teamName = teamName;
    this.teamFlag = teamFlag;
    this.x = x;
    this.y = y;
  }

  void display() {
    textSize(22);
    textAlign(CENTER);
    text(groupName,x+235,y-5);
    
    for (int i = 0; i < teamName.length; i++) {
      fill(255);
    //  noStroke();
      rect(x, y+i*boxH, boxW, boxH);
      
      image(teamFlag[i], x + 5, y + i * boxH + 5, 40, 40);
    }
    

    
  }
}
  /*
    rect(0, 30, 470, 40);
   rect(0, 75, 470, 40);
   rect(0, 120, 470, 40);
   rect(0, 165, 470, 40);
   */
