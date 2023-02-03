PImage art;


void setup() {
  size (658, 500);
  art = loadImage("Eating.png");
  art.loadPixels();
}

void draw() {
  image (art,0,0);
}

void keyPressed() {
  if (key == 'r') {
   loadImage("Eating.png");
  }
  if (key=='h'){
  
  }
}

void horizontalFlip (PImage img) {
  int x=0;
  int y=0;
PImage tmp= new PImage(x,y);
art.loadPixels();
for (int i=0;i<art.pixels.length;i++){
color c=art.pixels[i];
color newC=width-i;
art.pixels[i]=newC;
}
art.updatePixels();

}
