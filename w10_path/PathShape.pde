class PathShape{
 Point[] vertices;
  int numPoints;
  int setPoints;
  color border;
  color inside;
  
PathShape(int x){
numPoints=x;
setPoints=0;
vertices= new Point[numPoints]; 
border=#FA3F3F;
inside=#15EAD0;
}

void addPoint(int x, int y){
if (numPoints>setPoints){
setPoints++;
}
else {

}
}
  
void display(){
fill(border);
  beginShape();
vertex
endShape();
}
  
}//class
