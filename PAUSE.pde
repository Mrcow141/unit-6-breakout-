 void pausescreen(){
   background(fadetoppartofhair);
   
   fill(black);
   tactile(400,200,100,100);
   rect(400,200,100,100,15);
 }
 
 
 void mousepressedpausescreenbacktomaingame(){
     if (mouseX>400&&mouseX<500&&mouseY>200&&mouseY<300) {
       mode  = GAME;
 }
 }
