class Group {
  String groupName;
  String[] teamName;
  PImage[] teamFlag;
  float x;
  float y;
  int boxW = width/2-15;
  int boxH = 40;
  color c;


  Group(String groupName, String[] teamName, PImage[] teamFlag, float x, float y, color c) {
    this.groupName = groupName;
    this.teamName = teamName;
    this.teamFlag = teamFlag;
    this.x = x;
    this.y = y;
    this.c = c;
  }

  void display() {
    //Group
    textSize(22);
    textAlign(CENTER);
    fill(c);
    text(groupName, x+235, y-5);
    noStroke();
    
    // middle line
    fill(255);
    rect(width/2-5, 0, 5, height);

    //Boxes
    for (int i = 0; i < teamName.length; i++) {

      // Draws a box for the amount of names in each category
      fill(255);
      rect(x, y+(i*(boxH+5)), boxW, boxH);

      // Place a flag in each box
      // The 5 in (boxH + 5) is to account for the space between each box
      image(teamFlag[i], x, y + i * (boxH + 5), 80, 40);


      fill(0);
      textSize(30);
      textAlign(LEFT, CENTER);
      String abreviatedName = teamName[i].substring(0, teamName[i].length() -4);
      text(abreviatedName.toUpperCase(), x + boxW/4, y+i*(boxH+5)+boxH/2);
    }

  }
}
