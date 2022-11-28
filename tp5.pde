// 85091/4
// Isoardi Verónica
// Comisión 4
// 

Container game;

void setup() {
  size (1200, 600);
  frameRate(60);
  game = new Container();
}

void draw() { 
  game.display();
}

void keyPressed() {
  game.setKey(key);
}

void mousePressed() {
  game.mouseEvent(mouseX, mouseY);
}
