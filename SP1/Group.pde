class Group {
  String groupName;
  String[] teamName;
  PImage[] teamFlag;
  float x;
  float y;
  int boxW = 470;
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

    //Boxes
    for (int i = 0; i < teamName.length; i++) {
      fill(255);
      rect(x, y+(i*(boxH+5)), boxW, boxH);
      //circle(x, y+(i*(boxH+5)), 10);


      image(teamFlag[i], x, y + i * (boxH + 5), 80, 40);

      textAlign(LEFT, CENTER);
      fill(0);
      textSize(30);
      // circle(x + boxW/4, y+(i*(boxH+5)+boxH/2), 10);

      String abreviatedName = teamName[i].substring(0, teamName[i].length() -4);
      text(abreviatedName.toUpperCase(), x + boxW/4, y+i*(boxH+5)+boxH/2);
    }
    



    //middle line, propably going to replace with a box instead
    line(width/2, 0, width/2, height);
  }
}
