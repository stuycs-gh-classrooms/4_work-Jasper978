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
for (int i=0; i<numPoints;i++){
vertices[i]= new Point(x,y);
}
}
  
void display(){
fill(border);
  beginShape();
  for (int i=0;i<numPoints;i++){
vertex(vertices[i].x,vertices[i].y);
  }
endShape(CLOSE);
}
  
}//class
