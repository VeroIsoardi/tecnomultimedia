class Film { 
  Person villain, hero;
  Ship[] ships;
  PImage background1, background2;

  Film() {
    background1 = loadImage("background1.png");
    background2 = loadImage("background2.jpg");
    villain     = new Person("Darth Vader", "darth_vader.png", 200, 200, -100);
    hero        = new Person("Luke Skywalker", "luke_skywalker.png", 150, 200, 0);
    ships       = new Ship[5];

    for (int i = 0; i < 5; i++) {
      ships[i] = new Ship();
    }
  }

  void play(int scene) {
    background (0);

    if (scene < 8) {
      image(background1, 0, 0, 800, 600);
    } else {
      image(background2, 0, 0, 800, 600);
    }

    switch(scene) {
    case 0:
      hero.walk(400, int(random(0, 5)));
      villain.walk(250, int(random(0, 5)));
      break;
    case 1:
      hero.walk(0, 0);
      villain.talk("Unete a mi y \n juntos gobernaremos \n la galaxia");     
      break;
    case 2:
      hero.walk(0, 0);
      villain.walk(hero.getPosX()-70, 5);
      hero.talk("Nunca me uniré a ti");
      break;
    case 3:
      hero.walk(0, 0);
      villain.talk("Obi-Wan no te \n dijo qué le pasó \n a tu padre");
      break;
    case 4:
      villain.walk(0, 0);
      hero.talk("Tu lo mataste!");
      break;
    case 5:
      hero.walk(0, 0);
      villain.talk("No... Yo soy tu padre");
      break;
    case 6:
      villain.walk(0, 0);
      hero.talk("Noooooooooooooooo");
      break;
    case 7:
      hero.disappear();
      break;
    case 8:
      for (int i = 0; i < 5; i++) {
        ships[i].fly();
      }
      break;
    case 9:
      textSize(42);
      fill(#ffffff);
      text("The end", width/2, height/2);
      break;
    default:
      exit();
    }
  }
}
