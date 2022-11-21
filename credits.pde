class Credits {
  PImage background;
  Button backButton;
  Game   game;

  Credits(Game g) {
    background = loadImage("GameBackground.png");
    backButton = new Button(20, 20, "<", true);
    game       = g;
  }

  void display() {
    image(background, 0, 0, 1200, 600);
    backButton.display();

    textSize(40);
    text("Credits", 600, 100);

    textSize(28);
    textAlign(LEFT);
    text("Developer: Verónica Isoardi", 370, 200);
    text("Legajo:        85091/4", 370, 250);
    text("Comisión:     4", 370, 300);
    text("Profesor:    Leonardo Garay", 370, 350);
    textAlign(CENTER);
  }

  void mouseClick(int x, int y) {
    if (backButton.click(x, y)) {
      game.changeScreen(0);
    }
  }
}
