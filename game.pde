class Game {
  Menu         menu;
  Credits      credits;
  MiniGame     miniGame;
  Instructions instructions;
  PFont        font;
  int          screen;     

  Game() {
    menu         = new Menu(this);
    credits      = new Credits(this);
    miniGame     = new MiniGame(this);
    instructions = new Instructions(this);
    font         = loadFont("RetroGaming.vlw");
    screen       = 0;
    textFont(font, 32);
    fill(100);
  }

  void display() {
    switch(screen) {
    case 0: 
      menu.display();
      break;
    case 1:
      instructions.display();
      break;
    case 2:
      miniGame.play();
      break;
    case 3: 
      credits.display();
      break;
    }
  }

  void setKey(int charCode) {
    if (charCode == 32 && screen == 2) {
      miniGame.jump();
    }
  }

  void mouseEvent(int coordX, int coordY) {
    switch(screen) {
    case 0: 
      menu.mouseClick(coordX, coordY);
      break;
    case 1:
      instructions.mouseClick(coordX, coordY);
      break;
    case 2:
      miniGame.mouseClick(coordX, coordY);
      break;
    case 3: 
      credits.mouseClick(coordX, coordY);
      break;
    }
  }
  
  void changeScreen(int screenNumber){
    screen = screenNumber;
  }
}
