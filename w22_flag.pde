void setup(){
  size(500,500);
  angle = 0;
  L = 100;
  n = 5;
  Offset = 250;
  frameRate(120);
  background(0);
}

void draw(){
  noStroke();
  clr = color(125 - 125*(sin(angle)), 125 - 100*(sin(2*angle)), 125*(sin(angle)));
  println(angle);
  fill(clr);
  circle(L*sin(radians(n*(L*cos(5*radians(angle))))) + Offset, L*sin(radians(n*L*sin(5*radians(angle)))) + Offset,5);
  angle+= 0.01;
}
