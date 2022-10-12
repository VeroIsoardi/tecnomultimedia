// 85091/4
// Isoardi Verónica
// Comisión 4
// 

Film film;

void setup() {
  size (800, 600);
  film = new Film();
}

void draw() { 
  film.play();
}

void keyPressed() {
  if (keyCode == RIGHT) {
    film.advanceScene();
  }
}
