class Film {
  Scene scene;

  Film() {
    scene = new Scene();
  }

  void play() {
    scene.playTransition();
  }

  void advanceScene() {
    scene.nextTransition();
  }
}
