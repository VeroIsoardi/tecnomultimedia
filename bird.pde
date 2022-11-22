class Bird {
  PImage characterDown, characterUp;
  int    x, y, speed;

  Bird() {
    characterUp = loadImage("Bird-up.png");
    characterDown = loadImage("Bird-down.png");
    x         = width - 200;
    y         = 200;
    speed     = 10;
  }

  void show() {
    if(frameCount%6 == 0){
      image(characterUp, x, y, 100, 90);
    } else {
      image(characterDown, x, y, 100, 90);
    }

    if (x > -10) {
      x-= speed;
    } else {
      x = width - 40;
      speed+=3;
    }
  }

  int[] coordenates() {
    int[] coords = {x, y};
    return coords;
  }
}
