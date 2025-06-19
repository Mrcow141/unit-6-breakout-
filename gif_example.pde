PImage [] gifintro;
int numberOfFrames;

void setup() {
  numberOfFrames = 24;
  gifintro = new PImage [numberOfFrames] ;
  
  int i = 0;
  
  while(i < numberOfFrames){
    gifintro[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
   i = i +1; 
  }
}

void draw (){
  
  
}
