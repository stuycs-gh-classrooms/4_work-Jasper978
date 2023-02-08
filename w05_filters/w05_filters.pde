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
    image(art, 0, 0);
  }
if (key=='g'){
  grayscale(art);
  art.updatePixels();
}
}

void grayscale(PImage img) {
for (int i=0;i<art.pixels.length;i++){
color c=art.pixels[i];
int r=int(red(c));
int g=int(green(c));
int b=int(blue(c));
color newC=((r+g+b)/3);
art.pixels[i]=newC;
}
art.updatePixels();
}
