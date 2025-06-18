void gameover(){
   background(white);
   fill(white);
     tactile(450,700, 130,100);
  //rect(850,700, 130,100,10);
}

void mousepressednut(){
  if(mouseX>450&&mouseX<580&&mouseY>700&&mouseY<800){
   mode = INTRO; 
  }
}
