class Scene {
  int transitionNumber;
  Person villain, hero;
  PImage background;

  Scene() {
    transitionNumber = 0;
    background       = loadImage("background.png");   
    villain          = new Person("Darth Vader", "darth_vader.png", 200, 200, -100);
    hero             = new Person("Luke Skywalker", "luke_skywalker.png", 150, 200, 0);
  }

  void playTransition() {
    image(background, 0, 0, 800, 600);
    switch(transitionNumber) {
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
      villain.talk("Obi-Wan no te dijo \n qué le pasó a tu \n padre");
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
      hero.talk("Noooooooooooooooo \n oooooooooooo");
      break;
    case 7:
      hero.disappear();
      break;
    default:
      exit();
    }
  }

  void nextTransition() {
    transitionNumber++;
  }
}
