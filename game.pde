void game() { 
  setBackground();
  returnToMenuText();

  if (round == 0) {
    setPattern();
  }

  for (int i = 0; i <= round + 1; i++) {
    displaySimon();
    showPattern();
    patternDone = true;
  }
}

void setPattern() {
  for (int i = 0; i < maxRounds; i++) {
    computerOrder[i] = int(random(0, 3));
  }
}

void displaySimon() {
  noStroke();
  fill(lerpColor(0, green, 0.8));
  rect(100, 100, 200, 200, 90, 0, 0, 0);

  fill(lerpColor(0, red, 0.8));
  rect(300, 100, 200, 200, 0, 90, 0, 0);

  fill(lerpColor(0, yellow, 0.8));
  rect(100, 300, 200, 200, 0, 0, 0, 90);

  fill(lerpColor(0, blue, 0.8));
  rect(300, 300, 200, 200, 0, 0, 90, 0);

  fill(20);
  circle(width/2, height/2, 80);
  fill(255);
  text(round, width/2, height/2);
}

void showPattern() {
  for (int i = 0; i <= round + 1; i++) {
  }
}

void restartGame() {
}

void checkPattern() {
}

void saveColor() {
  if (posX > 100 && posX <= 300) {
    if (posY > 100 && posY <= 300) {
      userOrder[round] = colors[0]; // clicked green tile
      println("green");
    }  

    if (posY > 300 && posY <= 500) {
      userOrder[round] = colors[2]; // clicked yellow tile
      println("yellow");
    }
  }

  if (posX > 300 && posX <= 500) {
    if (posY > 100 && posY <= 300) {
      userOrder[round] = colors[1]; // clicked red tile
      println("red");
    }  

    if (posY > 300 && posY <= 500) {
      userOrder[round] = colors[3]; // clicked blue tile
      println("blue");
    }
  }
}

void mouseClicked() {
  if (patternDone) {
    posX = mouseX;
    posY = mouseY;
    println(posX, posY);
    saveColor();
    checkPattern();
    patternDone = false;
  }
}
