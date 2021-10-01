
void game() {
  //background;
  background (255, 255, 255);

  //yes or no buttons and the text
  line (400, 30 ,400, 235);
  line (400, 375 ,400, 800);
  textSize (70);
  fill(0);
  text ("Yes", 200, 500);
  text ("No", 600, 500);
  
  //score display
  textSize (20);
  text ("score: "+score, 400, 10);
  
  //text size
  textSize (textlarge);
  if (textlarge < 150 ) {
    textlarge += 5;
  }
  fill (colors [randomizer1]);
  text (word [randomizer2], 400, 300);
  
  timer++;
  if (timer == 180) {
    mode = GAMEOVER;
  }
}

void gameClicks() {

  if (mouseX < 400 && randomizer1 == randomizer2) {
    textlarge = 0;
    score++;
    timer=0;
  } else if (mouseX > 400 && randomizer1 != randomizer2) {
    textlarge = 0;
    score++;
    timer=0;
  } else {
    mode = GAMEOVER;
  }

  coinFlip = (int) random (0, 2);
  if (coinFlip == 0) {
    randomizer1 = (int) random (0, 6);
    randomizer2 = randomizer1;
  } else if (coinFlip != 0) {
    randomizer1 = (int) random (0, 6);
    randomizer2 = (int) random (0, 6);
  }
}
