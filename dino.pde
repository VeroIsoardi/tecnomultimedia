class Dino {
  PImage  dino;
  float   x, y;
  boolean isGoingUp;

  Dino() {
    dino      = loadImage("Dino.png");
    x         = 50;
    y         = 355;
    isGoingUp = false;
  }

  void show() { 
    image(dino, x, y, 150, 150);
  }

  void move() {
    if (isGoingUp) {
      if ( y > 150) {
        y -= 30;
      } else {
        isGoingUp = false;
      }
    } else {
      if ( y < 355) {
        y+=25;
      } else {
        y=355;
      }
    }
  }

  void jump() {
    if (!isGoingUp) {
      isGoingUp = true;
    }
  }
}
