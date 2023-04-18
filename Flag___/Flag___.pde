PImage art;
PImage yell;
PImage sad;

float angle = 0; // Initialize angle variable for animation
float xOffset = 0; // Initialize x-offset for horizontal wave

void setup() {
  size(400, 200); // Set the canvas size
  art=loadImage("Squirl.jpg");
  yell=loadImage("Yell.jpg");
  sad=loadImage("Sad.jpg");
}

void draw() {
  background(255); // Set the background color to white
 image(art,0,0,100,100);
 image(yell,100,0,100,100);
 image(sad,0,100,200,100);
  // Draw the flagpole
  stroke(0); // Set the stroke color to black
  strokeWeight(20); // Set the stroke weight to 20 pixels
  line(width/2, 0, width/2, height); // Draw a vertical line for the flagpole
 
  // Calculate the x-coordinate of the flag using a sine function
  float x = width/2;
  float y = 0; // Change the amplitude of the wave by multiplying with a factor
 
  // Draw the flag
  fill(255, 0, 0); // Set the fill color to red
  rect(x, y, width-x, height/2); // Draw a rectangle for the flag
 
  // Draw a star on the flag
  fill(255); // Set the fill color to white
  stroke(#FFFF33); // Set the stroke color to white
  strokeWeight(3); // Set the stroke weight to 3 pixels
  float starSize = 50; // Set the size of the star
  float offsetX = 25; // Set the x-offset for the star
  float offsetY = 20; // Set the y-offset for the star
  drawStar(x + offsetX, y + offsetY, starSize); // Draw the star on the flag
 
  angle += 0.05; // Update the angle for animation
  xOffset += 1; // Update the x-offset for horizontal wave
  String s="Socialist Squirls";
  fill(0,0,0);
  text(s,0,375);
}

// Function to draw a 5-pointed star
void drawStar(float x, float y, float size) {
  fill(#FFFF33);
  float angle = TWO_PI / 5;
  float halfAngle = angle / 2.0;
  float radius1 = size / 2.0;
  float radius2 = size / 4.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a + halfAngle) * radius1;
    sy = y + sin(a + halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
