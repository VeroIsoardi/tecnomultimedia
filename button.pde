class Button {

  float leftTopCornerX, leftTopCornerY, rectHeight, rectWidth;
  String label;

  Button(float x, float y, String text) {
    rectHeight   = 100;
    rectWidth    = 325;
    label          = text;
    leftTopCornerX = x; 
    leftTopCornerY = y;
  }

  void display() {
    stroke(100);
    strokeWeight(2);
    fill(255);
    rect(leftTopCornerX, leftTopCornerY, rectWidth, rectHeight);

    fill(100);
    textSize(30);
    textAlign(CENTER);
    text(label, leftTopCornerX + (rectWidth /2), leftTopCornerY + 60);
  }

  boolean click(int coordX, int coordY) {
    if (coordX >= leftTopCornerX && coordX <= leftTopCornerX + rectWidth) {
      if (coordY >= leftTopCornerY && coordY <= leftTopCornerY + rectHeight) {
        return true;
      }
    }
    return false;
  }
}
