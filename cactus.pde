class Cactus {
  PImage character;
  int    x, y, speed, initialPos;

  Cactus(int i) {
    character  = loadImage("Cactus"+i+".png");
    initialPos = i * int(random(10, 30));
    x     = width - (40 * initialPos);
    y     = 365;
    speed = 10;
  }

  void show() {
    image(character, x, y, 100, 120);
    if (x > -10) {
      x-= speed;
    } else {
      x = width - (40 * initialPos);
      speed++;
    }
  }

  int[] coordenates() {
    int[] coords = {x, y};
    return coords;
  }
}
