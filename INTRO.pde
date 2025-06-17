void intro(){
  background(black);
  tactile(450,500, 130,100);
  rect(450,500, 130,100,10);
}

void mpintro(){
 if(mouseX>450 && mouseX< 580 && mouseY>500 && mouseY<600){
  mode = GAME; 
 }
}
