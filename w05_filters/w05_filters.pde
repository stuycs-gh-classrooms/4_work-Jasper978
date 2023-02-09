PImage art;


void setup() {
  size (658, 500);
  art = loadImage("Eating.png");
  art.loadPixels();
}

void draw() {
  image (art,0,-5);
}

void keyPressed() {
  if (key == 'r') {
loadImage("Eating.png");
  }
if (key=='g'){
  grayscale(art);
  art.updatePixels();
}
}

void grayscale(PImage img) {
for (int i=0;i<art.pixels.length;i++){
color c=img.pixels[i];
int newC=int((red(c)+green(c)+blue(c))/3);
img.pixels[i]=img.pixels[newC];

img.updatePixels();
}
}
