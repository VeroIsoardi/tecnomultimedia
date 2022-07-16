void game() {
  background(20);
  returnToMenuText();

  if (continueGame && round + 1 <= maxRounds) {
    if (round == 0 && gameNotStarted) {
      setPattern();
      gameNotStarted = false;
    }

    displaySimon();
    showPattern();
  } else if ( round == maxRounds) {
    winner();
  } else {
    loser();
  }
}

void setPattern() {
  for (int i = 0; i < maxRounds; i++) {
    computerOrder[i] = int(random(0, 3));
  }
}

void displaySimon() {
  noStroke();

  displayGreenTile();
  displayRedTile();
  displayYellowTile();
  displayBlueTile();
  roundCircle();
}

void displayGreenTile() {
  if (tileOn && chosenColor == green) {
    fill(green);
  } else {
    fill(lerpColor(0, green, 0.7));
  }
  rect(100, 100, 200, 200, 90, 0, 0, 0);
}

void displayRedTile() {
  if (tileOn && chosenColor == red) {
    fill(red);
  } else {
    fill(lerpColor(0, red, 0.7));
  }
  rect(300, 100, 200, 200, 0, 90, 0, 0);
}

void displayYellowTile() {
  if (tileOn && chosenColor == yellow) {
    fill(yellow);
  } else {
    fill(lerpColor(0, yellow, 0.7));
  }
  rect(100, 300, 200, 200, 0, 0, 0, 90);
}

void displayBlueTile() {
  if (tileOn && chosenColor == blue) {
    fill(blue);
  } else {
    fill(lerpColor(0, blue, 0.7));
  }
  rect(300, 300, 200, 200, 0, 0, 90, 0);
}

void roundCircle() {
  fill(20);
  circle(width/2, height/2, 80);
  fill(255);
  text(round+1, width/2, height/2);
}

void loser() {
  textSize(50);
  fill(250);
  text("You lost!", width/2, height/2);
}

void winner() {
  textSize(50);
  fill(250);
  text("You win!", width/2, height/2);
}

void showPattern() {
  if (!patternDone) {

    if (round < 5) {
      time -= 15;
    } else if (round >= 5 && round > 10) {
      time -= 20;
    } else {
      time -= 25;
    }

    if (round + 1 > currentRound) {
      if (time > 0) { 
        tileOn = true;
        chosenColor = colors[computerOrder[currentRound]];
      } else {
        time = height;
        tileOn = false;
        currentRound++;
      }
      displaySimon();
    } else {
      time         = height;
      currentRound = 0;
      tileOn       = false;
      patternDone  = true;
    }
  }
}

void restartGame() {
  continueGame   = true;
  gameNotStarted = true;
  tileOn         = false;
  patternDone    = false;
  round          = 0;
  currentRound   = 0;
  tilesPressed   = 0;
  time           = height;
  setPattern();
}

void checkPattern() {
  if (round + 1 >= tilesPressed) {
    if (computerOrder[currentRound] != userOrder[currentRound]) {
      continueGame = false;
    }
    currentRound++;
  }
}

void saveColor() {
  if (posX > 100 && posX <= 300) {
    if (posY > 100 && posY <= 300) {
      userOrder[round] = 0; // clicked green tile
      chosenColor = green;
    }  

    if (posY > 300 && posY <= 500) {
      userOrder[round] = 2; // clicked yellow tile
      chosenColor = yellow;
    }
  }

  if (posX > 300 && posX <= 500) {
    if (posY > 100 && posY <= 300) {
      userOrder[round] = 1; // clicked red tile
      chosenColor = red;
    }  

    if (posY > 300 && posY <= 500) {
      userOrder[round] = 3; // clicked blue tile
      chosenColor = blue;
    }
  }
}

void mousePressed() {
  if (patternDone) {
    posX = mouseX;
    posY = mouseY;
    tileOn = true;
    tilesPressed++;
    saveColor();
    checkPattern();

    if (round + 1 == tilesPressed) { 
      patternDone = false;
      round++;
      tilesPressed = 0;
      currentRound = 0;
      time = height;
    }
  }
}

void mouseReleased() {
  tileOn = false;
}
