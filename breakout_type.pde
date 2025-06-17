//color pallette
color white = #ffffff;
color black = #000000;
color gray = #4f7172;
color playercolor = #42323d;//reynas hair
//color toppartofgradient = #5d5e63;
//color bottompartofgradient = #598880;
color fadebottompartofhair = #bfd0e4;
color fadetoppartofhair =#2d3a43;
color razes = #a66b5d;
color razehat = #cc8849;
color kayohead =#212059;
//key variables=============
boolean  aKey, dKey;// movement keys

//balls
float ballx, bally, balld;

float velocityx = 0;
float velocityy = 3;

//player
float p1x, p1y, p1d;

//lives
int lives = 3;


//points
int points = 0;

//arrays/bricks
int[] bricksx;
int[] bricksy;
int bricksd = 65;
int n = 45;
int i = 0;
int tempx, tempy;
boolean[] alive;


int mode;

final int INTRO = 0 ;
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
