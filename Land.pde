class Land {
int updateState;
int state;
int plotSize;
color landColor;
int cx,cy;

//constructor
Land(int x, int y, int size, int type) {
cx=x;
cy=y;
plotSize=size;
state=type;
if (state==0) {
fill (DIRT_COLOR);
}
if (state==1) {
fill (FIRE_COLOR);
}
if (state==2) {
fill (BURNT_COLOR);
}
if (state==3) {
fill (GRASS_COLOR);
}

}
void display() {
fill(landColor);
square(cx,cy,plotSize);
}
void updateNextState(int i){
if(i==FIRE){
  if (this.state==FIRE){
  this.updateState=BURNT;
  }
  if (this.state==GRASS) {
  this.updateState=FIRE;
}
else{
this.updateState=this.state;
}
}
}//updateState
void changeState(){
  for (int i=0; i<tractLength;i++) {
  updateNextState(i);
  }
}
}//class
