// 85091/4
// Isoardi Verónica
// Comisión 4

Film film;
int scene;

void setup() {
  size (800, 600);
  scene = 0;
  film = new Film();
}

void draw() { 
  film.play(scene);
}

void keyPressed() {
  scene++;
}
