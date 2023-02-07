PImage art;


void setup() {
  size (658, 500);
  art = loadImage("Eating.png");
  art.loadPixels();
}

void draw() {
  image (art,0,-5);
  //showTint();
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

void showTint(color tint){

}

void grayscale(PImage img){
for (int i=0;i<art.pixels.length;i++){
  color c=art.pixels[i]
  color r=color(red(c),green(c),blue(c));
  color newC=color(c/3);
  art.pixels[i]=newC;
}
art.updatePixels();
image(img,0,-5);
}

void colorScale(PImage img, color tint){

}
