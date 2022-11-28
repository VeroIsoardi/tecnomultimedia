class Container {
  Menu         menu;
  Credits      credits;
  MiniContainer     miniContainer;
  Instructions instructions;
  PFont        font;
  int          screen;     

  Container() {
    menu         = new Menu(this);
    credits      = new Credits(this);
    miniContainer     = new MiniContainer(this);
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
      miniContainer.play();
      break;
    case 3: 
      credits.display();
      break;
    }
  }

  void setKey(char space) {
    if (space == ' ' && screen == 2) {
      miniContainer.jump();
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
      miniContainer.mouseClick(coordX, coordY);
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
