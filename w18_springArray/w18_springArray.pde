float GRAVITY = 0.4;
int MAX_SIZE  = 50;
int MIN_SIZE = 10;
float MAX_MASS = 10;
float MIN_MASS = 1;
float DAMPENING = .998;//0.996;
color g=color(0,255,0);
color r=color(255,0,0);


float SPRING_CONST = 0.005;
int SPRING_LENGTH = 200;
int NUM_ORBS = 20;

boolean moving;
boolean bounce;

Orb[] orbs;
FixedOrb earth;

void setup() {
  size(800, 800);
  background(255);
  frameRate(30);
  reset();
}//setup

void draw() {

  background(255);
  displayMode();
for(int i=0;i<orbs.length;i++){
orbs[i].display();
if(i>0){
drawSpring(orbs[i],orbs[i-1]);
}
//to make it look nicer(but not really correct)
}

  if (moving) {

    for (int i=0; i < orbs.length; i++) {
      orbs[i].run(bounce, DAMPENING);
      if(i<orbs.length-1){
      PVector spring=orbs[i].getSpring(orbs[i+1],SPRING_LENGTH,SPRING_CONST);
      orbs[i].applyForce(spring);
      orbs[i].run(false,DAMPENING);
      }
      if(i>1){
      PVector spring=orbs[i].getSpring(orbs[i-1],SPRING_LENGTH,SPRING_CONST);
      orbs[i].applyForce(spring);
      orbs[i].run(false,DAMPENING); 
      }
  }//run orbs
  }//moving

}//draw

void drawSpring(Orb o0, Orb o1) {
  if(dist(o0.position.x, o0.position.y, o1.position.x, o1.position.y)>SPRING_LENGTH){
  stroke(g);
  }
  else if(dist(o0.position.x, o0.position.y, o1.position.x, o1.position.y)<SPRING_LENGTH){
  stroke(r);
  }
    line(o0.position.x, o0.position.y, o1.position.x, o1.position.y);
}//drawSpring

void reset() {
  orbs = new Orb[NUM_ORBS];
  for (int i=0; i<orbs.length;i++){
  int x=int(random(25,width-25));
  int y=int(random(25,height-25));
  if (i==orbs.length/2){
  orbs[i]= new FixedOrb(width/2,height/2,25,5);
  }
  else {
  orbs[i]= new Orb(x,y,25,5);
  }
  }
  moving = false;
  bounce = false;
}//reset


void keyPressed() {
  if (key == ' ') {
    moving = !moving;
  }
  if (key == 'b') {
    bounce = !bounce;
  }
  if (key == 'r') {
    reset();
  }
}//keyPressed

void displayMode() {
  //initial setup
  color c;
  textAlign(LEFT, TOP);
  textSize(15);
  noStroke();
  //red or green boxes
  c = moving ? color(0, 255, 0) : color(255, 0, 0);
  fill(c);
  rect(0, 0, 53, 20);
  c = bounce ? color(0, 255, 0) : color(255, 0, 0);
  fill(c);
  rect(54, 0, 57, 20);

  stroke(0);
  fill(0);
  text("MOVING", 1, 0);
  text("BOUNCE", 55, 0);
}
