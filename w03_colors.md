PImage art;

void setup() {
size (400,800);
art = loadImage ("img1.png");
art.loadPixels();
image (art,0,0);
}

void draw(){
image(art,0,0);
}

keyPressed() {
if (key=='r'){
art = loadImage("img1.png");  
}
}
