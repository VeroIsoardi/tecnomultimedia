class Credits {
  PImage background;
  Button restart, back;
  Game   game;

  Credits(Game g) {
    background = loadImage("GameBackground.png");
    restart    = new Button(100, 200, "Restart");
    back       = new Button(300, 200, "Back");
    game       = g;
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
    restart.display();
    back.display();
  }

  void mouseClick(int x, int y) {
    if (restart.click(x, y)) {
      game.changeScreen(2);
    } else if (back.click(x, y)) {
      game.changeScreen(0);
    }
  }
}
