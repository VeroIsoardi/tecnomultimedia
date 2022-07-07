// 85091/4
// Isoardi Verónica
// Comisión 4

PFont   font;
color[] colors;
int[]   computerOrder, userOrder;
int     screenNumber, round, currentRound, maxRounds, posX, posY, time, tilesPressed;
color   green, blue, yellow, red, chosenColor;
boolean patternDone, tileOn, gameNotStarted, continueGame;

void setup() {
  size(600, 600);
  background(0);
  colorMode(RGB);
  patternDone   = false;
  gameNotStarted= true;
  continueGame  = true;
  screenNumber  = 0;
  round         = 0;
  currentRound  = 0;
  tilesPressed  = 0;
  time          = height; 
  maxRounds     = 20;
  colors        = new color[4];
  computerOrder = new int[maxRounds];
  userOrder     = new int[maxRounds];
  font          = loadFont("RetroGaming.vlw");
  green         = color(0, 255, 0);
  red           = color(255, 0, 0);
  blue          = color(0, 0, 255);
  yellow        = color(255, 255, 0); 

  /* set font */
  textFont(font, 48);
  textAlign(CENTER, CENTER);

  /* set colors */
  colors[0] = green; 
  colors[1] = red;
  colors[2] = yellow;
  colors[3] = blue;
}

void draw() {
  switch(screenNumber) {
  case 0: 
    menu();
    break;
  case 1:
    game();
    break;
  case 2: 
    credits();
    break;
  }
}

/* other functions */
void setBackground() {
  background(20);
  for (int i = 0; i<30; i++){
   stroke(random(100, 200));
   circle(random(width), random(height), random(0, 3));
  }
}

void returnToMenuText() {
  fill(255);
  textSize(16);
  text("Back [b]", 50, 20);
}

void changeToMenuScreen() {
  screenNumber = 0;
  menu();
}

void changeToGameScreen() {
  screenNumber = 1;
  game();
}

void changeToCreditsScreen() {
  screenNumber = 2;
  credits();
}

void keyPressed() {
  if (screenNumber == 0) { // user is on the menu
    switch(key) {
    case 'n':
    case 'r':
      changeToGameScreen();
      break;
    case 'c':
      changeToCreditsScreen();
      break;  
    case 'e':
      exit();
    }
  } else {
    if (screenNumber == 1 && key == 'r') { // user is playing
      restartGame();
      changeToGameScreen();
    }
    if (key == 'b') { // user is not on the menu
      changeToMenuScreen();
    }
  }
}
