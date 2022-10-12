class Person { 
  String name;
  PImage character;
  int posX, posY, sizeX, sizeY;

  Person (String charName, String pic, int widthP, int heightP, int pos) {
    name = charName;
    character = loadImage(pic);
    posX = pos;
    posY = 300;
    sizeX = widthP;
    sizeY = heightP;
  }

  void talk(String message) {
    image(character, posX, posY, sizeX, sizeY);
    fill(#ffffff);
    noStroke();
    triangle(posX+100, posY, posX+125, posY, posX+80, posY + 40);
    ellipse(posX+125, posY, 140, 80);
    textSize(12);
    fill(#000000);
    text(message, posX+67, posY-13);
  }

  void walk(int max, int speed) {
    image(character, posX, posY, sizeX, sizeY);
    if (posX < max) {
      posX += speed;
    }
  }

  int getPosX() {
    return posX;
  }

  void disappear() {
    if (sizeX > 0) {
      sizeX -= 10;
      sizeY -= 10;
    }

    image(character, posX, posY, sizeX, sizeY);
  }
}
