PImage[] groupAFlags = new PImage[4];
PImage[] groupBFlags = new PImage[4];
PImage[] groupCFlags = new PImage[4];
PImage[] groupDFlags = new PImage[4];

String[] groupAFiles = {"russia.png", "saudiArabia.png", "egypt.png", "uruguay.png"};
String[] groupBFiles = {"portugal.png", "spain.png", "morocco.png", "iran.png"};
String[] groupCFiles = {"france.png", "australia.png", "peru.png", "denmark.png"};
String[] groupDFiles = {"argentina.png", "iceland.png", "croatia.png", "nigeria.png"};

Group groupA, groupB, groupC, groupD;

void setup() {
  size(965, 420);
  background(#1d314c);

  for (int i = 0; i < 4; i++) {
    groupAFlags[i] = loadImage(groupAFiles[i]);
    groupBFlags[i] = loadImage(groupBFiles[i]);
    groupCFlags[i] = loadImage(groupCFiles[i]);
    groupDFlags[i] = loadImage(groupDFiles[i]);
  }
}

void draw() {
  rect(0, 30, 470, 40);
  rect(0, 75, 470, 40);
  rect(0, 120, 470, 40);
  rect(0, 165, 470, 40);
}
