// 85091/4
// Isoardi Verónica
// Comisión 4
// 

Game game;

void setup() {
  size (1200, 600);
  frameRate(60);
  game = new Game();
}

void draw() { 
  game.display();
}

void keyPressed() {
  game.setKey(keyCode);
}

void mousePressed() {
  game.mouseEvent(mouseX, mouseY);
}
