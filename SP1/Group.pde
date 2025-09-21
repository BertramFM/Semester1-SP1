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
    //group name
    textSize(22);
    textAlign(CENTER);
    fill(c);
    text(groupName, x+235, y-5);
    noStroke();

    //Boxes
    for (int i = 0; i < teamName.length; i++) {
      fill(255);
      rect(x, y+(i*(boxH+5)), boxW, boxH);

      image(teamFlag[i], x, y + i * (boxH + 5), 80, 40);
    }
    //middle line, propably going to replace with a box instead
    line(width/2, 0, width/2, height);
  }
}
