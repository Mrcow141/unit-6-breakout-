void intro(){
  image(gifintro[frames],0,0,width,height);
  frames++;
  if (frames == numberOfFrames){
   frames=0; 
  }
  tactile(450,500, 130,100);
  rect(450,500, 130,100,10);
}

void mpintro(){
 if(mouseX>450 && mouseX< 580 && mouseY>500 && mouseY<600){
  mode = GAME; 
  setupScene();
 }
}
