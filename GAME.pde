

void setup() {
    size(1000, 800);
//declaring variables  
 p1x = width/2;
 p1y = height;
 p1d = 200;
 
 ballx = width/2;
 bally = height/2;
 balld = 20;



}


void draw() {
  //if (mode == GAME) {
    //player
    background(gray);
    player(p1x,p1y,p1d);
    //ball
    ball(ballx,bally,balld);
    // restrictions of the ball within the project
    
    if(ballx<=balld/2) velocityx = -velocityx;
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
   p1x = constrain(p1x,100,900);
   p1y = constrain(p1y,800,800);
  }
//}

void gradient() {
  int y = 0;
  float transparency = 0;

  while (y < height) {
    transparency = map(y, 0, 1200, 0, 1);
    color p = lerpColor(toppartofgradient, bottompartofgradient, transparency);
    stroke(p);
    line(0, y, width, y);

    y = y + 1;
  }
}


void player(float p1x,float p1y,float p1d){
  strokeWeight(3);
  stroke(white);
  fill(playercolor);
  circle(p1x,p1y,p1d);
  
}

void ball(float ballx,float bally, float balld){
 fill(white);
 stroke(black);
  circle(ballx,bally,balld);
}
