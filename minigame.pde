class MiniGame {
  PImage    gameBackground;
  Bird      bird;
  Cactus[]  cactus;
  Dino      dino;
  Container game;
  Button    backButton, restartButton;
  int       i, currentIndex;
  int       dinoPosX, dinoPosY, dinoHeight, dinoWidth;
  int       objectPosX, objectPosY, objectHeight, objectWidth;
  boolean   endGame, isBirdFlying;
  AudioPlayer ripSound;


  MiniGame(Container g) {
    gameBackground = loadImage("GameBackground.png");
    dino           = new Dino();
    bird           = new Bird();
    backButton     = new Button(20, 20, "<", true);
    restartButton  = new Button(width/2-150, 270, "Restart", false);
    cactus         = new Cactus[3];
    game           = g;
    i              = 0;
    endGame        = false;
    isBirdFlying   = false;
    dinoHeight     = dino.height();
    dinoWidth      = dino.width();
    ripSound       = m.loadFile("DeathSound.wav");

    loadCactus();
  }

  void play() {
    image(gameBackground, 0, 0, 1200, 600);
    backButton.display();

    if (endGame) {
      deadMessage();
    } else {
      putCharacters();
      checkResult();
    }
  }


  void mouseClick(int x, int y) {
    if (backButton.click(x, y)) {
      game.changeScreen(0);
    } else if (restartButton.click(x, y)) {
      i = 0;
      endGame = false;
      for (int i=0; i<3; i++) {
        cactus[i].restartPos();
      }
      bird.setPosX(width);
    }
  }

  void loadCactus() {
    for (int i = 0; i < 3; i++) {
      cactus[i] = new Cactus(i+1);
    }
  }

  void jump() {
    dino.jump();
  }

  void putCharacters() {
    showObstacles();
    dino.show();
    dino.move();
  }

  void showObstacles() {
    currentIndex = i;
    if (i != 3) {
      cactus[i].show();
      if (cactus[i].coordenates()[0] <= 0) {
        i++;
      }
    } else {
      isBirdFlying = true;
      bird.show();
      if (bird.coordenates()[0] <= 0) {
        i = 0;
        isBirdFlying = false;
      }
    }
  }

  boolean crash() {
    dinoPosX   = dino.coordenates()[0]; // posX of dino
    dinoPosY   = dino.coordenates()[1]; // posY of dino

    if (currentIndex == 3) {
      objectPosX   = bird.coordenates()[0];
      objectPosY   = bird.coordenates()[1];
      objectHeight = bird.height();
      objectWidth  = bird.width();
    } else {
      objectPosX   = cactus[currentIndex].coordenates()[0];
      objectPosY   = cactus[currentIndex].coordenates()[1];
      objectHeight = cactus[currentIndex].height();
      objectWidth  = cactus[currentIndex].width();
    }

    if (dinoPosX < objectPosX + objectWidth && dinoPosX + dinoWidth > objectPosX) {
      if (dinoPosY < objectPosY + objectHeight/2 && dinoPosY + dinoHeight > objectPosY) {
        return true;
      }
    }
    return false;
  }

  void checkResult() {
    if (crash()) {
      endGame = true;
    }
  }

  void deadMessage() {
    ripSound.loop();
    textSize(48);
    text("Game over", width/2, 200);    
    restartButton.display();
  }
}
