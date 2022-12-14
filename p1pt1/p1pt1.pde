int BALL_SIZE=10;
int boxTall=10;
int boxLong=20;
int PaddleWidth=75;
int PaddleHeight=20;
int boxesLength=8;
boolean playing;
Ball b;
Box rows[];
Box boxes[][];
Paddle p;

void setup() {
size (600,400);
background (0);
b =  new Ball();
p = new Paddle();
rows = new Box[boxesLength];
boxes = new Box[4][boxesLength];
for (int i=0;i<boxes.length;i++) {
//showBoxes(boxes[i]);
}
playing=false;
}

void draw() {
background (0);
p.display();
b.display();
if (playing==true) {
b.move();
if (p.hitTop(b)==true) {
b.bounce();
}//ball hit
}//playing
}//draw

void mousePressed() {
if (playing == true) {
  playing=false;
}//if true
else if (playing == false) {
playing=true;
}//if false
}//mousePressed

void keyPressed() {
if (key == ' ') {
b.reset();
}
if (key == CODED) {
if (keyCode == RIGHT) {
p.move(10);
}
if (keyCode == LEFT) {
p.move(-10);
}
}
}//key Pressed

void makeBoxes (Box[] rows, int numB) {
int thingSize=width/numB;
for (int i=0;i<rows.length;i++){
//rows[i].Box(i*thingSize,boxTall);
}

}

void showBoxes (Box[] rows) {
for (int i=0;i<rows.length;i++) {
rows[i].display();
}
}
