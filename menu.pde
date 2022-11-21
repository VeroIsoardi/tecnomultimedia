class Menu {
  PImage background;
  Button instructions, credits, startGame;
  Game   game;

  Menu(Game g) {
    background   = loadImage("DefaultBackground.jpg");
    instructions = new Button(430, 50, "Instructions", false);
    credits      = new Button(430, 290, "Credits", false);
    startGame    = new Button(430, 170, "Start Game", false);
    game         = g;
  }

  void display() { 
    image(background, 0, 0, 1200, 600);

    instructions.display();
    startGame.display();
    credits.display();
  }

  void mouseClick(int x, int y) {
    if (instructions.click(x, y)) {
      game.changeScreen(1);
    } else if (credits.click(x, y)) {
      game.changeScreen(3);
    } else if (startGame.click(x, y)) {
      game.changeScreen(2);
    }
  }
}
