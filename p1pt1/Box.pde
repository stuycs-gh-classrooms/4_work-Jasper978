class Box{
int boxWidth,boxHeight,cy,cx;

Box(){
boxWidth=boxLong;
boxHeight=boxTall;
}//default con

Box(int x, int y) {
cx=x;
cy=y;
boxWidth=boxLong;
boxHeight=boxTall;
}//con

void display() {
  fill (255,200,195);
  rect(cx,cy,boxWidth,boxHeight);
}//dis

boolean ifHit(Ball b) {
if (b.cx + b.radius >= this.cx && b.cx -b.radius <= this.cx+PaddleWidth) {
if (b.cy + b.radius <= this.cy && b.cy-b.radius >=this.cy ) {
return true;
}
else {
return false;
}
}//if x
else {
return false;
}
}


}//class Box
