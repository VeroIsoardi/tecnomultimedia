class Menu {
  PImage background;

  Menu() {
    background = loadImage("MenuBackground.jpg");
  }

  void display() { 
    image(background, 0, 0, 800, 600);
    fill(100);
    text("Press space to play", 190, 130);
  }
}
