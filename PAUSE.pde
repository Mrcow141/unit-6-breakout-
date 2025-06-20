 void pausescreen(){
   image(gifpause[f],0,0,width,height);
  f++;
  if (f == numberofframes){
   f=0; 
  }
   
   fill(fadetoppartofhair);
   tactile(450,700,100,100);
   rect(450,700,100,100,15);
 }
 
 
 void mousepressedpausescreenbacktomaingame(){
     if (mouseX>450&&mouseX<550&&mouseY>700&&mouseY<800) {
       mode  = GAME;
 }
 }
