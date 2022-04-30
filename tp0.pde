void setup() {
  size(500, 500);
  background(230, 230, 250);
}

void draw() {
  //fondo
  strokeWeight(1);
  stroke(75, 0, 130);
  fill(255, 255, 255);
  circle(frameCount+random(0, 200), random(470), 150);

  //figura

  fill(205, 133, 63);
  noStroke();
  rect(150, 80, 220, 280, 90, 90, 20, 20);

  strokeWeight(1);
  stroke(243, 212, 176);
  fill(255, 228, 196);
  rect(230, 300, 60, 80, 5);
  ellipse(260, 220, 140, 190);

  stroke(148, 0, 211);
  strokeWeight(20);
  line(325, 160, 330, 348);

  stroke(204, 112, 23);
  strokeWeight(2);
  line(185, 160, 185, 352);

  fill(205, 133, 63);
  stroke(204, 112, 23);
  strokeWeight(2);
  line(255, 82, 260, 110);
  arc(260, 165, 150, 130, radians(180), radians(270));

  fill(148, 0, 211);
  stroke(140, 0, 199);
  strokeWeight(2);
  arc(260, 165, 150, 130, radians(270), radians(360));

  noStroke();
  fill(23, 204, 203);
  rect(130, 350, 260, 300, 90);

  stroke(0, 162, 162);
  strokeWeight(2);
  line(175, 430, 175, 500);
  line(345, 430, 345, 500);

  noFill();
  stroke(101, 101, 251);
  strokeWeight(4);
  rect(200, 200, 50, 40, 90);
  rect(260, 200, 50, 40, 90);
  line(250, 220, 260, 220);
  line(190, 210, 200, 215);
  line(310, 215, 315, 210);

  stroke(0, 0, 0);
  strokeWeight(2);
  arc(225, 190, 60, 80, radians(70), radians(110));
  arc(285, 190, 60, 80, radians(70), radians(110));
  
  line(240, 260, 270, 260);
}
