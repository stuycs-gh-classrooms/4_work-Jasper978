class Paddle {
int cx,cy,pWidth,pHeight;

Paddle() {
cx=width/2;
cy=height-PaddleHeight;
pWidth=PaddleWidth;
pHeight=PaddleHeight;
}//

  
void display() {
rect(cx,cy,pWidth,pHeight);
}

void move(int x) {
cx+=x;
}

boolean hitTop(Ball b) {
if (b.cx + b.radius >= this.cx && b.cx -b.radius <= this.cx+PaddleWidth) {
if (b.cy + b.radius >= this.cy && b.cy-b.radius <=this.cy ) {
return true;
}
else {
return false;
}
}//if x
else {
return false;
}
}//boolean
  
}//class
