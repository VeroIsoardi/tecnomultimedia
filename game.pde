class Game {
  Menu      menu;
  Credits   credits;
  PImage    gameBackground;
  PFont     font;
  int       screen;     
  Villain[] villains;
  Dino      dino;

  Game() {
    menu           = new Menu();
    credits        = new Credits();
    dino           = new Dino();
    villains       = new Villain[3];
    font           = loadFont("RetroGaming.vlw");
    gameBackground = loadImage("GameBackground.png");
    screen   = 0;
    textFont(font, 32);
    
    loadVillains();
  }

  void display() {
    switch(screen) {
    case 0: 
      menu.display();
      break;
    case 1:
      play();
      break;
    case 2: 
      credits.display();
      break;
    }
  }

  void play() {
  image(gameBackground, 0, 0, 800, 600);
  dino.show();
  }

  void menu() {
    menu.display();
  }

  void credits() {
    credits.display();
  }

  void jump() {
    if (screen == 0) {
      screen++;
    }
    print("saltando");
  }
  
  void loadVillains(){
    for(int i = 0; i<3; i++){
      villains[i] = new Villain();      
    } 
  }
}
