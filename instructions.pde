void instructions() {
  setBackground();
  setLines();
  returnToMenuText();

  /* Title */
  textSize(28);
  fill(250);
  text("How to play", width/2, 70);

  textSize(28);
  fill(green);
  text("How to play", width/2 - 2, 70 - 2);

  textSize(20);
  fill(250);
  text("Try to remember the pattern\nfor as long as you can!", width/2, 140);
  text("Once the game starts a key (color) will flash.\n"
    +"In each game round the sequence\n"
    +"will be repeated and a color will be added.\n", width/2, 240);
  text("You must repeat the pattern\n"
    +"in the correct order\n"
    +"to pass to the next round.", width/2, 320);
  text("If you don't enter the right sequence,\n you lose :(", width/2, 400);
  text("But if you reach the end without making\n any mistakes, you win :D", width/2, 470);
}


void setLines() {
  strokeWeight(2);

  stroke(green);
  line(50, 550, 175, 550);

  stroke(yellow);
  line(175, 550, 300, 550);

  stroke(red);
  line(300, 550, 425, 550);

  stroke(blue);
  line(425, 550, 550, 550);
}
