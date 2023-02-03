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
    image(art, 0, 0);
  }
  if (key=='q') {
    colorQuad(art);
    art.updatePixels();
  }
}

void colorQuad(PImage img){
for (int i=0;i<art.pixels.length;i++){
  color c=art.pixels[i];
  color newC = color( red(c), green(c),blue(c));
  if (i<img.width&&i<img.height) {
       newC = color(red(c), green(c),0);
  }
  if (i<img.width&&i>img.height) {
       newC = color(0, green(c),blue(c));
  }
    if (i>img.width&&i<img.height) {
       newC = color( red(c),0,blue(c));
  }
art.pixels[i]=newC;
}
art.updatePixels();
image(art,0,0);
}
