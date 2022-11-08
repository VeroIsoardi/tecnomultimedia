// 85091/4
// Isoardi Verónica
// Comisión 4
// 

Game game;

void setup() {
  size (800, 600);
  game = new Game();
}

void draw() { 
  game.display();
}

void keyPressed() {
  if (key == ' ') {
    game.jump();
  }
}
