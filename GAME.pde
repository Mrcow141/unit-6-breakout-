

void setup() {
  size(1000, 800);
  //declaring variables
  p1x = width/2;
  p1y = height;
  p1d = 200;

  ballx = width/2 ;
  bally = height/2 + 200;
  balld = 20;

//int n = 40;

  bricksx = new int[n];
  bricksy = new int[n];
  
  tempx = 100; 
  tempy = 75;
  int i =0;
  while (i< n){
   bricksx[i] =tempx;
   bricksy[i] = tempy;
   //if(bricksy[i] == 100) fill(fadetoppartofhair);
   //if(bricksy[i] == 200) fill(fadebottompartofhair);
   //if(bricksy[i] == 300) fill(razes);
   //if(bricksy[i] == 400) fill(razehat);
   //if(bricksy[i] == 500) fill(kayohead);
   tempx = tempx +100;
   if(tempx == width){
     tempx = 100;
    tempy = tempy + 100; 
   }
    i = i +1; 
  }
  
}


void draw() {
  //if (mode == GAME) {
  //player
  background(gray);
  player(p1x, p1y, p1d);
  //ball
  ball(ballx, bally, balld);
  // restrictions of the ball within the project

  if (ballx<=balld/2) velocityx = -velocityx;
  if (ballx>=width-balld/2) velocityx = -velocityx;
  if (bally<=balld/2) velocityy = -velocityy;

  //movement of ball
  ballx += velocityx;
  bally +=velocityy;
  //player bouncing

  if (dist(p1x, p1y, ballx, bally)<= p1d/2 + balld/2) {
    velocityx = (ballx - p1x)/15;
    velocityy = (bally - p1y)/15;
  }
  //movement
  if (aKey) p1x = p1x - 5;
  if (dKey) p1x = p1x + 5;
  p1x = constrain(p1x, 100, 900);
  p1y = constrain(p1y, 800, 800);

  //lives
  textSize(20);
  text(lives, 170, 750);
  text("lives : ", 100, 750);
  if (ballx>0&&ballx<1000&&bally>810&&bally<820) {
    ballx = width/2;
    bally = height/2;
    lives -= 1;
    velocityx = 0;
    velocityy = 3;

    //if(lives ==0){
    // mode = GAMEOVER;
    //}
  }

  text("points", 760, 750);
  text(points, 820, 750);
  
  //arrays
  int i = 0;
  while(i<n){
   if(bricksy[i] == 100) fill(fadetoppartofhair);
   if(bricksy[i] == 200) fill(fadebottompartofhair);
   if(bricksy[i] == 300) fill(razes);
   if(bricksy[i] == 400) fill(razehat);
   if(bricksy[i] == 500) fill(kayohead);
  circle(bricksx[i], bricksy[i], bricksd); 
  if(dist(ballx,bally,bricksx[i],bricksy[i]) < balld/2 + bricksd/2){
   velocityx = (ballx - bricksx[i])/10;
   velocityy = (bally - bricksy[i])/10;
  }
  
  i = i + 1;
  }
}

//void mousePressed(){

//}




//}

//void gradient() {
//  int y = 0;
//  float transparency = 0;

//  while (y < height) {
//    transparency = map(y, 0, 1200, 0, 1);
//    color p = lerpColor(toppartofgradient, bottompartofgradient, transparency);
//    stroke(p);
//    line(0, y, width, y);

//    y = y + 1;
//  }
//}


void player(float p1x, float p1y, float p1d) {
  strokeWeight(3);
  stroke(white);
  fill(playercolor);
  circle(p1x, p1y, p1d);
}

void ball(float ballx, float bally, float balld) {
  fill(white);
  stroke(black);
  circle(ballx, bally, balld);
}
