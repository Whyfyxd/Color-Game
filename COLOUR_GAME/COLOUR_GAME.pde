// Andy Zhang Sep 17th 2021 color game

int mode;
int textlarge;
int f;
int  coinFlip;
int randomizer1;
int  randomizer2;
int timer;
int score;
int highScore = 0;
color [] colors;
String [] word;
PFont font;
PImage [] gif;
int frameNum;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

void setup() {
  size (800, 800, FX2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  colors = new color[6];
  word = new String[6];
  
  //int array setup
  colors[0] = #FF0000;
  colors[1] = #0000FF;
  colors[2] = #00FF00;
  colors[3] = #FFA500;
  colors[4] = #FF00FF;
  colors[5] = #808080;

  //String array setup
  word[0] = "RED";
  word[1] = "BLUE";
  word[2] = "GREEN";
  word[3] = "ORANGE";
  word[4] = "PURPLE";
  word[5] = "GREY";
  
  coinFlip = (int) random (0, 2);
  if (coinFlip == 0) {
    randomizer1 = (int) random (0, 6);
    randomizer2 = randomizer1;
  } else {
    randomizer1 = (int) random (0, 6);
    randomizer2 = (int) random (0, 6);
    if (randomizer1 == randomizer2) {
      randomizer1 = (int) random (0, 6);
      randomizer2 = (int) random (0, 6);
    }
    
  }
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("error: Mode = " + mode);
  }
}
