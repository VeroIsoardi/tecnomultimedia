// 85091/4
// Isoardi Verónica
// Comisión 4
// 

Game game;

void setup() {
  size (1200, 600);
  game = new Game();
}

void draw() { 
  game.display();
}

void keyPressed() {
  game.setKey(key);
}

void mousePressed() {
  print(mouseX + ", " + mouseY);
  game.mouseEvent(mouseX, mouseY);
}
