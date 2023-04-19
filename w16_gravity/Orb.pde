class Orb {

  PVector position;
  PVector velocity;
  PVector acceleration;
  int size;
  float mass;
  color c;
  int MIN_SIZE,MIN_MASS,MAX_SIZE,MAX_MASS;
  

  Orb(int x, int y, int s, float m) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    size = s;
    mass = m;
    c = color(random(254), random(254), random(254));
  }//constructor

  void run(boolean bounce) {
    position.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
    if (bounce) {
      yBounce();
      xBounce();
    }
  }//run

  float getDensity() {
    return mass/size;
  }//getDensity

  void applyForce(PVector f) {
    PVector newf = f.copy();
    newf.div( mass );
    acceleration.add(newf);
  }//applyForce

  void yBounce() {
    if (position.y < size/2) {
      position.y = size/2;
      velocity.y *= -1;
    }
    else if (position.y >= (height-size/2)) {
      position.y = height - size/2;
      velocity.y *= -1;
    }
  }//yBounce

  void xBounce() {
    if (position.x < size/2) {
      position.x = size/2;
      velocity.x *= -1;
    }
    else if (position.x >= width - size/2) {
      position.x = width - size/2;
      velocity.x *= -1;
    }
  }//xBounce

  boolean checkYBoundry() {
    boolean check = position.y >= height - size/2;
    check = check || (position.y <= size/2);
    return check;
  }
  boolean checkXBoundry() {
    boolean check = position.x >= width - size/2;
    check = check || (position.x <= size/2);
    return check;
  }

  void display() {
    int t = int(map(getDensity(), MIN_MASS/MAX_SIZE, MAX_MASS/MIN_SIZE, 100, 255));
    stroke(0);
    fill(c, t);
    circle(position.x, position.y, size);
  }//display

  PVector getGravity(Orb o, float GRAVITY){
    float d=this.position.dist(o.position);
   float f=((GRAVITY * (mass * o.mass)) / sq(d));
   PVector direction = PVector.sub(this.position,o.position);
   direction.normalize();
   direction.mult(f);
   return direction;
  }
  
}//OrbNode
