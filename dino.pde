class Dino {
  PImage  dino, dinoRun1, dinoRun2;
  int     x, y;
  boolean isGoingUp;

  Dino() {
    dino      = loadImage("Dino.png");
    dinoRun1  = loadImage("DinoRunning1.png");
    dinoRun2  = loadImage("DinoRunning2.png");
    x         = 50;
    y         = 400;
    isGoingUp = false;
  }

  void show() { 
    if (frameCount%5 == 0) {
      image(dinoRun1, x, y, 90, 100);
    } else {
      image(dinoRun2, x, y, 90, 100);
    }
  }

  void move() {
    if (isGoingUp) {
      if ( y > 150) {
        y -= 20;
      } else {
        isGoingUp = false;
      }
    } else {
      if ( y < 400) {
        y+=25;
      } else {
        y=400;
      }
    }
  }

  void jump() {
    if (!isGoingUp) {
      isGoingUp = true;
    }
  }

  int[] coordenates() {
    int[] coords = {x, y};
    return coords;
  }

  int width() {
    return 90;
  }

  int height() {
    return 100;
  }
}
