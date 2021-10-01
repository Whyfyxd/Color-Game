void intro() {
  //gif background
  frameNum = 41;
  gif = new PImage[frameNum];

  int i = 0;
  while (i < frameNum) {
    gif[i] = loadImage("frame_" + i + "_delay-0.06s.gif");
    i++;
  }

  //display gif
  image (gif[f], 0, 0, 800, 800);
  f++;
  if (f==frameNum) f=0;

  //font and letters and the box
  font = createFont("IniyaDisplay-ow0Ra.otf", 200);
  fill (255, 255, 255);
  rect (300, 500, 200, 100);
  fill (0, 0, 0);
  textSize (75);
  text ("start", 400, 545);
  textFont (font);
  textSize (100);
  fill (0, 255, 0);
  text ("Colour Game", 400, 250);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
}
