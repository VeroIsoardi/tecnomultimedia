class Instructions {
  PImage background;
  Button backButton;
  Game   game;

  Instructions(Game g) {
    background = loadImage("DefaultBackground.jpg");
    backButton = new Button(20, 20, "<", true);
    game       = g;
  }

  void display() { 
    image(background, 0, 0, 1200, 600);
    backButton.display();

    textSize(40);
    text("How to play", 600, 100);
    
    textSize(20);
    text("Click on Start Game and start jumping with the space bar \n to avoid crashing into the cactuses and velociraptors.", 600, 200);
    text("Be careful, as time goes by the speed and the amout of obstales will increase.", 600, 260);
  }

  void mouseClick(int x, int y) {
    if (backButton.click(x, y)) {
      game.changeScreen(0);
    }
  }
}
