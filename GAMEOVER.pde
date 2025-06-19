void gameover() {
  background(black);
  fill(white);
  tactile(450, 400, 130, 100);
  rect(450, 400, 130, 100, 10);
}

void mousepressedgameover() {
  if (mouseX>450&&mouseX<580&&mouseY>400&&mouseY<500) {
    mode = INTRO;
  }
}
