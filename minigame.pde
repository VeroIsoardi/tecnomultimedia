class MiniGame {
  PImage   gameBackground;
  Bird     bird;
  Cactus[] cactus;
  Dino     dino;
  Game     game;
  Button   backButton;

  MiniGame(Game g) {
    gameBackground = loadImage("GameBackground.png");
    dino           = new Dino();
    bird           = new Bird();
    backButton     = new Button(20, 20, "<", true);
    cactus         = new Cactus[4];
    game           = g;

    loadCactus();
  }

  void play() {
    image(gameBackground, 0, 0, 1200, 600);
    backButton.display();
    for (int i = 0; i < 4; i++) {
      cactus[i].show();
    }
    bird.show();
    dino.show();
    dino.move();
  }

  void mouseClick(int x, int y) {
    if (backButton.click(x, y)) {
      game.changeScreen(0);
    }
  }

  void loadCactus() {
    for (int i = 0; i < 4; i++) {
      cactus[i] = new Cactus(i+1);
    }
  }
  
  void jump(){
    dino.jump();
  }
}
