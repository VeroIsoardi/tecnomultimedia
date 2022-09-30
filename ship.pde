class Ship {
  int posX, posY, speed;
  float rotation;
  PImage figure;

  Ship() {
    posX   = -600;
    posY   = -250;
    figure = loadImage ("ship.png");
    speed  = 10;
    rotation = rotation();
  }

  void fly() {
    translate(width/2, height/2);
    rotate(rotation);
    image(figure, posX, posY, 150, 150);
    posX = posX + speed/2;
    posY = posY + speed/2;

    if ((posX == 500) || (posY == 300)) {
      posX = -600;
      posY  = -250;
      rotation = rotation();
    }
  }

  private float rotation() {
    return cos(random(0, 360));
  }
}
