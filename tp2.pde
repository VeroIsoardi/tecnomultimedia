// 85091/4
// Isoardi Verónica
// Comisión 4

int  posX, posY;
color white = (255);
color black = (0);
boolean startWhite;

void setup () {
  size (670, 670);
  background(255);
  strokeWeight(10);
}

void draw() {
  posY = 5;
  posX = 5;

  for (int j = 1; j <= 4; j++) {
    if (j % 2 != 0) {
      firstHalfRow();
      posX  = 11;
    } else {
      secondHalfRow();
      posX  = 5;
    }  
    posY += 168;
  }
}

void firstHalfRow() {
  int tHeight = 150;
  int tWidth = 0;

  for (int i = 0; i < 2; i++) {
    topLeftTriangles(tHeight, tWidth);

    posY += 7;
    posX += 7;
    changeColor();    
    bottomRightTriangles(tHeight, tWidth);

    posX += 168;
    posY -= 7;
    topRightTriangles(tHeight, tWidth);

    posX -= 7;
    posY += 7;
    changeColor();    
    bottomLeftTriangles(tHeight, tWidth);

    posX += 168;
    posY -= 7;
  }
}

void secondHalfRow() {
  int tHeight = 150;
  int tWidth = 0;

  for (int i = 0; i < 2; i++) {
    topRightTriangles(tHeight, tWidth);

    posX -= 7;
    posY += 7;
    changeColor();    
    bottomLeftTriangles(tHeight, tWidth);

    posX += 168;
    posY -= 7;
    topLeftTriangles(tHeight, tWidth);

    posY += 7;
    posX += 7;
    changeColor();    
    bottomRightTriangles(tHeight, tWidth);

    posX += 168;
    posY -= 7;
  }
}

void topLeftTriangles(int tHeight, int tWidth) {
  for (int i = 1; i<9; i++) {
    setColor();
    triangle(posX + tHeight, posY + tWidth, posX + tWidth, posY + tWidth, posX + tWidth, posY + tHeight);
    tHeight -= 10;
    tWidth  += 10;
    changeColor();
  }
}

void topRightTriangles(int tHeight, int tWidth) {
  for (int i = 1; i<9; i++) {
    setColor();
    triangle(posX + tWidth, posY + tWidth, posX + tHeight, posY + tWidth, posX + tHeight, posY + tHeight);
    tHeight -= 10;
    tWidth  += 10;
    changeColor();    
  }
}

void bottomLeftTriangles(int tHeight, int tWidth) {
  for (int i = 1; i<9; i++) {
    setColor();
    triangle(posX + tWidth, posY + tWidth, posX + tWidth, posY + tHeight, posX + tHeight, posY + tHeight);
    tHeight -= 10;
    tWidth  += 10;
    changeColor();    
  }
}

void bottomRightTriangles(int tHeight, int tWidth) {
  for (int i = 1; i<9; i++) {
    setColor();
    triangle(posX + tHeight, posY + tWidth, posX + tHeight, posY + tHeight, posX + tWidth, posY + tHeight);
    tHeight -= 10;
    tWidth  += 10;
    changeColor();    
  }
}

void setColor() {
  if (startWhite) {
    stroke(white);
    fill(white);
  } else {
    stroke(black);
    fill(black);
  }
}

void mouseClicked(){
  strokeWeight(random(8, 18));
}
void changeColor() {
  startWhite = !startWhite;
}
