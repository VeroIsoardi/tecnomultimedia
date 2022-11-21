class Dino {
  PImage dino;

  Dino() {
    dino = loadImage("Dino.png");
  }

  void show() {
    image(dino, 25, 400, 100, 100);
  }
}
