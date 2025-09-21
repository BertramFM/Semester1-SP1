PImage[][] flags;

void setup() {
  size(965, 420);
  background(#1d314c);

  flags = new PImage[4][4];
  // loading flags in a 2d array
  for (int group = 0; group < flags.length; group++) {
    for (int team = 0; team < flags[group].length; team++) {
      flags[group][team] = loadImage("group" + group + "_" + team + ".png");
    }
  }

  
  rect(0, 245, 470, 40);
  rect(0, 290, 470, 40);
  rect(0, 335, 470, 40);
  rect(0, 380, 470, 40);
}

void draw() {
  /* load images in a grid, refine later
   for (int group = 0; group < flags.length; group++) {
   for (int team = 0; team < flags[group].length; team++) {
   image(flags[group][team], 50 + group * 150, 50 + team * 80);
   }
   }
   */
}
