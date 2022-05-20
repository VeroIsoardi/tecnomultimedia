// 85091/4
// Isoardi Verónica
// Comisión 4b

PImage background1, background2, background3, background4, background5, lantern;
PFont  font, helpFont;
int    timer, counter, screen_number;
float  posX, posY, randomNumber;

void setup () {
  size (600, 500);

  background1 = loadImage("title.jpg");
  background2 = loadImage("characters.jpg");
  background3 = loadImage("more_characters.jpg");
  background4 = loadImage("producers.png");
  background5 = loadImage("end.jpg");
  lantern     = loadImage("lantern.png");
  font        = loadFont("Tangled.vlw");
  helpFont    = loadFont("Lato.vlw");
  timer       = 0;
  counter     = 1;
  posX        = 0;
  posY        = 0;
  screen_number = 0;

  imageMode(CENTER);
  textFont(font, 32);
  textAlign(CENTER, CENTER);
  frameRate(30);
}

void draw() {
  background(0);
  switch(screen_number) {
  case 0: 
    firstScreen();
    break;
  case 1: 
    secondScreen();
    break;
  case 2: 
    thirdScreen();
    break;
  case 3: 
    fourthScreen();
    break;
  case 4: 
    fifthScreen();
    break;
  }
}

// title
void firstScreen() { 
  if (screen_number == 0) {
    image(background1, 300, 250, 600, 500);

    if (counter < 100) {
      textSize(counter);
      counter++;
    }

    fill(100, 100, 100, 250); // text shadow
    text("Tangled", width/2, 405);

    fill(255, 215, 0);
    text("Tangled", width/2, 400);

    timer++;

    if (timer > 150) {
      updateScreen();
    }
  }
}

// main characters
void secondScreen() {
  if (screen_number == 1) {
    image(background2, 300, 250, 600, 500);
    textSize(32);

    fill(100, 100, 100, 250); // text shadow
    text("donna Murphy \n as Mother Gothel", 302, counter - 2);
    text("Zachary Levi \n as Flynn Rider \n ~ * ~", 302, counter - 102);
    text("Mandy Moore \n as Rapunzel \n ~ * ~", 302, counter - 252);
    text("Main characters", 302, counter -372);

    fill(255);
    text("donna Murphy \n as Mother Gothel", 300, counter);
    text("Zachary Levi \n as Flynn Rider \n ~ * ~", 300, counter - 100);
    text("Mandy Moore \n as Rapunzel \n ~ * ~", 300, counter - 250);
    text("Main characters", 302, counter - 370);
    counter += 5;

    timer++;
    if (timer > 200) {
      updateScreen();
    }
  }
}

// secondary characters
void thirdScreen() {
  if (screen_number == 2) {
    image(background3, 300, 250, 600, 500);

    if (timer < 50 ) {
      counter++;
    } else {
      if (timer > 100) {
        counter--;
      }
    }
    textSize(counter);

    fill(0, 0, 130, 250); // text shadow
    text("stabbington Brother - Ron Perlman", 302, 98);
    text("captain of the Guard - M.c. Gainey", 302, 148);
    text("short Thug - Paul F. Tompkins", 302, 198);
    text("hook hand Thug - Brad Garrett", 302, 248);

    fill(255);
    text("stabbington Brother - Ron Perlman", 300, 100);
    text("captain of the Guard - M.c. Gainey", 300, 150);
    text("short Thug - Paul F. Tompkins", 300, 200);
    text("hook hand Thug - Brad Garrett", 300, 250);

    timer++;
    if (timer > 150) {
      updateScreen();
    }
  }
}

// produecers & directors
void fourthScreen() {
  if (screen_number == 3) {
    image(background4, 300, 250, 600, 500);

    fill(255, 215, 0);
    if (counter >= 20) {
      image(lantern, 100, 200 - counter, 300, 300);
    }
    if (counter > 50) {
      image(lantern, 300, 250 - counter, 100, 100);
    }

    if (counter >= 100 && counter < 200 ) {
      image(lantern, 500, 135 - counter, 200, 200);
    }

    textSize(20);
    text("directed by", counter, 450);
    textSize(24);
    text("Nathan Greno and Byron howard", counter + 100, 470);

    counter++;
    timer++;
    if (timer > 170) {
      updateScreen();
    }
  }
}

// The end
void fifthScreen() {
  if (screen_number == 4) {
    image(background5, 300, 250, 600, 500);

    textFont(helpFont, 16);
    fill(200, 250);
    text("Click to throw some lanterns!", 452, 32);
    fill(0);
    text("Click to throw some lanterns!", 450, 30);

    if (posX > 0 && posY > 0) {
      if (frameCount % 5 == 0) {
        randomNumber = random(150, 250);
      }

      image(lantern, posX, posY, randomNumber, randomNumber-20);
    }

    textFont(font, 64);
    fill(200);
    text("The End", 302, 252);

    fill(randomNumber, 120, 230);
    text("The End", 300, 250);

    if (counter == 7) {
      updateScreen();
    }
  }
}

void mouseClicked() {
  posX = mouseX;
  posY = mouseY;
  counter++;
}

void updateScreen() {
  timer = 0;
  counter = 0;

  if (screen_number < 4) {
    screen_number++;
  } else {
    screen_number = 0;
  }
}
