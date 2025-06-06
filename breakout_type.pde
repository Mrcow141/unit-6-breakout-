//color pallette 
color white = #ffffff;
color black = #000000;


//key variables=============
boolean wKey, aKey, dKey, sKey;// aswd keys

//balls
float ballx, bally, balld;

float velocityx = 0;
float velocityy = 0;

//players
float p1x,p1y,p1d;


int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
int GAMEOVER;

void draw() {
  if (mode ==INTRO) {
    intro();
  } else if (mode == PAUSE) {
    pausescreen();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == GAME) {
    game();
  } //println("Mode Error: Mode is" + mode);
}
