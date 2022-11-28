class Bird {
  PImage characterDown, characterUp;
  int    x, y, speed;

  Bird() {
    characterUp   = loadImage("BirdUp.png");
    characterDown = loadImage("BirdDown.png");
    x             = width - 50;
    y             = int(random(150, 350));
    speed         = 5;
  }

  void show() {
    if (frameCount%6 == 0) {
      image(characterUp, x, y, 90, 80);
    } else {
      image(characterDown, x, y, 90, 80);
    }

    if (x >= -10) {
      x-= speed;
    } else {
      x = width - 50;
      y = int(random(150, 350));

      speed+=3;
    }
  }

  int[] coordenates() {
    int[] coords = {x, y};
    return coords;
  }

  int width() {
    return 100;
  }

  int height() {
    return 90;
  }
  
  void setPosX(int pos){
    x = pos + width();
  }
}
