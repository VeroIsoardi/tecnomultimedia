void credits() {
  setBackground();
  setBox();
  returnToMenuText();

  /* Title */
  textSize(28);
  fill(250);
  text("STAFF", width/2+2, 150+2);
  fill(blue);
  text("STAFF", width/2, 150);

  firstColumn();
  secondColumn();
}

void setBox() {
  strokeWeight(2);

  stroke(green);
  line(70, 150, 70, 450);

  stroke(yellow);
  line(70, 450, 530, 450);

  stroke(red);
  line(530, 150, 530, 450);

  stroke(blue);
  line(70, 150, width/2-60, 150);
  line(width/2+60, 150, 530, 150);
}

void firstColumn() {
  textAlign(LEFT, CENTER);
  int posY = 200;

  /* subtitles */
  textSize(20);
  fill(red);
  text("Produce", width/6, posY);
  text("Design", width/6, posY + 80);
  text("Development", width/6, posY + 160);

  /* staff names */
  posY = 235;
  textSize(24);
  fill(255);
  text("Ms. VAI", width/6, posY);
  text("Vero Iso", width/6, posY + 80);
  text("Andy Ardi", width/6, posY + 160);

  textAlign(CENTER, CENTER);
}

void secondColumn() {
  textAlign(LEFT, CENTER);
  int posY = 200;

  /* subtitles */
  textSize(20);
  fill(red);
  text("Sound", width/2, posY);
  text("Special Thanks", width/2, posY + 80);

  /* staff names */
  posY = 235;
  textSize(24);
  fill(255);
  text("Empty", width/2, posY);
  text("Tecno1", width/2, posY + 80);
  text("FDA", width/2, posY + 120);

  textAlign(CENTER, CENTER);
}
