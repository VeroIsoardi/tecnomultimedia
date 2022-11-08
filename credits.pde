class Credits {
  PImage background;

  Credits() {
    background = loadImage("GameBackground.png");
  }

  void display() {
    image(background, 0, 0, 800, 600);
    fill(100);
    textSize(36);
    text("Game Over", 290, 130);
    textSize(20);
    text("Press space to play", 270, 240);

    text("Verónica Isoardi", 90, 400);
    text("- ", 340, 400);
    text("85091/4", 380, 400);
    text("-", 510, 400);
    text("Comisión 4", 540, 400);
  }
}
