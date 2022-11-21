class Instructions {
  PImage background;
  Button backButton;
  Game   game;

  Instructions(Game g) {
    background = loadImage("DefaultBackground.jpg");
    backButton = new Button(20, 20, "Back");
    game       = g;
  }

  void display() { 
    image(background, 0, 0, 1200, 600);

    backButton.display();
  }

  void mouseClick(int x, int y) {
    if (backButton.click(x, y)) {
      game.changeScreen(0);
    }
  }
}
