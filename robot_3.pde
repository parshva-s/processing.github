/* ***********************************************************************
 * Full Name: Kevin Wu
 * Assignment Name: robot3
 * Class: Block One Computer Sciences
 * Date Completed: 3/5/2020
 * Original Work - K.W*/

float x = 60; // X-coordinate
float y = 440; // Y-coordinate
int radius = 45; // Head Radius
int bodyHeight = 160; // Body Height
int neckHeight = 70; // Neck Height
float easing = 0.05; 

void setup() {
  size(720, 480);
  smooth();
  strokeWeight(2);
  ellipseMode(RADIUS);
}

void draw() {
  background(255);
   float ny = y - bodyHeight - neckHeight - radius; // Neck Y
  int targetX = mouseX;
  x += (targetX - x) * easing;
  if (mousePressed) {
    if (neckHeight>0) {
      neckHeight-=2;
    }
    strokeWeight(10);
    stroke(#DE102F);
    line(x+12, ny, mouseX, mouseY); //laser
    strokeWeight(2);
  } else if (neckHeight<100) {
    neckHeight+=2;
  }
 
  // Neck
  stroke(102);
  line(x+2, y-bodyHeight, x+2, ny);
  line(x+12, y-bodyHeight, x+12, ny);
  line(x+22, y-bodyHeight, x+22, ny);
  // Antennae
  line(x+12, ny, x-18, ny-43);
  line(x+12, ny, x+42, ny-99);
  line(x+12, ny, x+78, ny+15);
  // Body
  noStroke();
  fill(102);
  ellipse(x, y-33, 33, 33);
  fill(0);
  rect(x-45, y-bodyHeight, 90, bodyHeight-33);
  fill(102);
  rect(x-45, y-bodyHeight+17, 90, 6);
  // Head
  fill(0);
  ellipse(x+12, ny, radius, radius);
  fill(255);
  ellipse(x+24, ny-6, 14, 14);
  fill(0);
  ellipse(x+24, ny-6, 3, 3);
  fill(153);
  ellipse(x, ny-8, 5, 5);
  ellipse(x+30, ny-26, 4, 4);
  ellipse(x+41, ny+6, 3, 3);
}