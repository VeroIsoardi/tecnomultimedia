void menu() {
  setBackground();

  title();

  /* subtitle */
  fill(255);
  textSize(30);
  text("The game", width/2, 150);

  /* options */
  textSize(28);
  text("New game [n]", width/2, 240);
  text("Restart game [r]", width/2, 300);
  text("How to play [h]", width/2, 360);
  text("Credits [c]", width/2, 420);
  text("Exit [e]", width/2, 480);
}

void title() {
  textSize(60);

  /* text shadow */
  fill(255);
  text("Simon Says", width/2+3, 103);

  /* text */
  fill(0, 0, 255);
  text("Si", 130, 100);
  fill(0, 255, 0);
  text("mon", 232, 100);
  fill(255, 255, 0);
  text(" Sa", 355, 100);
  fill(255, 0, 0);
  text("ys", 458, 100);
}
