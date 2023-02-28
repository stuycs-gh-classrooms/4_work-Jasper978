char a,t,g,c;


void setup(){
  size (300,300);
drawBase(a,100,100,50);
}

void drawBase(char base, int x, int y, int sz){
noStroke();
if (base==a){
fill(#FF991C);
}
if (base==t){
fill(#1C40FF);
}
if (base==c){
fill(#810183);
}
if (base==g){
fill(#02CE47);
}
textSize(sz);
text(base,x,y);
  square(x,y,sz);
}

void drawStrand( String dna, int x, int y, int sz){

}
