class MiniGame {
  PImage    gameBackground;
  Villain[] villains;
  Dino      dino;
  Game      game;
  Button    backButton;

  MiniGame(Game g) {
    gameBackground = loadImage("GameBackground.png");
    dino           = new Dino();
    villains       = new Villain[3];
    backButton = new Button(20, 20, "Back");
    game           = g;
    loadVillains();
  }

  void play() {
    image(gameBackground, 0, 0, 1200, 600);
    backButton.display();
    dino.show();
  }

  void loadVillains() {
    for (int i = 0; i<3; i++) {
      villains[i] = new Villain();
    }
  }

  void mouseClick(int x, int y) {
    if (backButton.click(x, y)) {
      game.changeScreen(0);
    }
  }
}
