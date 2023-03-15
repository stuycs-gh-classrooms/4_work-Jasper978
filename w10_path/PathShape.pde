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
if(setPoints<numPoints){
  vertices[setPoints]= new Point(x,y);
  setPoints++;
}
}
  
PathShape(int a, int minX, int minY, int maxX, int maxY){
numPoints=a;
setPoints=0;
vertices=new Point[numPoints];
border=#FA3F3F;
inside=#15EAD0;
makeRandomVertices(minX,minY,maxX,maxY);
}

  void makeRandomVertices(int minX, int minY, int maxX, int maxY){
 if( setPoints<numPoints){
 vertices[setPoints]=new Point(minX,minY,maxX,maxY);
 setPoints++;
 }
  }  
  
void display(){
  beginShape();
  stroke(border);
  fill(inside);
  for (int i=0;i<setPoints;i++){
vertex(vertices[i].x,vertices[i].y);
  }
endShape(CLOSE);
}


  
  
  
}//class
