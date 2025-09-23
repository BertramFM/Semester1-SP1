PImage[] groupAFlags = new PImage[4];
PImage[] groupBFlags = new PImage[4];
PImage[] groupCFlags = new PImage[4];
PImage[] groupDFlags = new PImage[4];

String[] groupAFiles = {"russia.png", "saudiArabia.png", "egypt.png", "uruguay.png"};
String[] groupBFiles = {"portugal.png", "spain.png", "morocco.png", "iran.png"};
String[] groupCFiles = {"france.png", "australia.png", "peru.png", "denmark.png"};
String[] groupDFiles = {"argentina.png", "iceland.png", "croatia.png", "nigeria.png"};

Group groupA, groupB, groupC, groupD;

color blue = #12d2f3;
color yellow = #f5f722;

void setup() {
  size(980, 420);
  background(#1d314c);

  for (int i = 0; i < 4; i++) {
    groupAFlags[i] = loadImage(groupAFiles[i]);
    groupBFlags[i] = loadImage(groupBFiles[i]);
    groupCFlags[i] = loadImage(groupCFiles[i]);
    groupDFlags[i] = loadImage(groupDFiles[i]);
  }
}

void draw() {
  groupA = new Group("GROUP A", groupAFiles, groupAFlags, 0, 25, blue);
  groupB = new Group("GROUP B", groupBFiles, groupBFlags, 0, 240, yellow);
  groupC = new Group("GROUP C", groupCFiles, groupCFlags, 500, 25, blue);
  groupD = new Group("GROUP D", groupDFiles, groupDFlags, 500, 240, yellow);
  groupA.display();
  groupB.display();
  groupC.display();
  groupD.display();
}
