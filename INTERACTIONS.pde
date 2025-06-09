void keyPressed() {
  if ( key == 'a')  aKey = true;
  if ( key == 'd')  dKey = true;
}
void keyReleased() {
  if ( key == 'a')  aKey = false;
  if ( key == 'd')  dKey = false;
}
  
  void tactile ( int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    strokeWeight(5);
    stroke(white);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
