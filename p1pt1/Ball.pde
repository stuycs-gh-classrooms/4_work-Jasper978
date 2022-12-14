class Ball {
  
int radius,cx,cy,xvel,yvel;

Ball() {
  radius=BALL_SIZE;
reset();
}//default con

Ball(int x, int y) {
  radius=BALL_SIZE;
  cx=x;
  cy=y;
  xvel=int(random(10)+1);
  yvel=int(random(10)+1);
}//con

void reset () {
cx=width/2;
cy=height/4*3;
  xvel=int(random(10)+1);
  yvel=int(random(10)+1);
}//reset

void display(){
circle(cx,cy,radius*2);
}//display

void move() {
cx+=xvel;
cy+=yvel;
if (cx<= radius || cx >= (width-radius)){
xvel*=-1;
}//xbounce
if (cy<= radius || cy >= (height-radius)){
yvel*=-1;
}//ybounce
}//move

void changeSpeed(int x, int y) {
xvel+=x;
yvel+=y;
}

void bounce(){
xvel*=-1;
yvel*=-1;
}
}//class
