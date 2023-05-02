class OrbNode extends Orb {

  OrbNode next;
  OrbNode previous;

  OrbNode(int x, int y, int s, float m) {
    super(x, y, s, m);
  }//constructor
  
  void display (int stringLength){
  super.display();
  if (next!=null){
  line(this.position.x,this.position.y,next.position.x,next.position.y);
  if(this.position.dist(next.position)<stringLength){
  stroke(0,255,0);
  }//green
if(this.position.dist(next.position)>stringLength){
  stroke(255,0,0);
  }//red
}//line
  }

void applySprings(int springLength, float springK){
float d1= this.position.dist(next.position);
float d2= this.position.dist(previous.position);
float dis1=d1-springLength;
float dis2=d2-springLength;
float mag1=dis1*springK;
float mag2=dis2*springK;
PVector dir1= PVector.sub(next.position,this.position);
PVector dir2= PVector.sub(this.position,previous.position);
dir1.normalize();
dir2.normalize();
dir1.mult(mag1);
dir2.mult(mag2);

PVector newf1= dir1.copy();
PVector newf2= dir2.copy();
newf1.div(mass);
newf2.div(mass);
acceleration.add(newf1);
acceleration.add(newf2);
}

}//class OrbNode
