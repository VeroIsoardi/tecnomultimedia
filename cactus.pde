class Cactus {
  PImage character;
  int    x, y, speed;

  Cactus(int i) {
    character  = loadImage("Cactus"+i+".png");
    x     = width + 50;
    y     = 380;
    speed = 10;
  }

  void show() {
    image(character, x, y, 80, 120);
    if (x >= -10) {
      x-= speed;
    } else {
      x = width + 50;
      speed+=3;
    }
  }

  int[] coordenates() {
    int[] coords = {x, y};
    return coords;
  }

  int width() {
    return 80;
  }

  int height() {
    return 120;
  }

  void restartPos() {
    x = width + 50;
  }
}
