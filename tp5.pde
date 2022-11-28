// 85091/4
// Isoardi Verónica
// Comisión 4

import ddf.minim.*;
import ddf.minim.*;

Container game;
Minim     m;

void setup() {
  size (1200, 600);
  frameRate(60);
  m = new Minim(this);
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
