color [] colarray = {color(37, 55, 181), color(255, 56, 4), color(255), color(0)}; // theme colours

PGraphics pg; // create an off-screen graphics
color PGRAPHICS_COLOR = color(0); 

int speed; // rate of drawing dots to canvas

void setup() {
  size(540, 540, P2D);
  background(255); // white background
  noStroke();
  offscreenCircle(); 
}


void draw() {
  saveFrame("output2/frames######.png");
  for (int i = 0; i < speed; i++) {
    int x = int(random(width)); // randomly position circle horizontally
    int y = int(random(height)); // randomly position circle vertically
    /* If the random position values fall within the black area 
       of the offscreen graphics, then draw tiny coloured circles. */
    if (pg.get(x, y) == PGRAPHICS_COLOR) { 
      fill(colarray[(int)random(0,3)]); // set the colour of the circle to the theme colours
      ellipse(x, y, 1, 1);
    }
  }
  speed+=10; // increase the number of dots by ten
}

// create a circle where dots will be drawn
void offscreenCircle() {
  pg = createGraphics(width, height); // the size of the offscreen graphics matches the canvas size 
  pg.beginDraw(); 
  pg.background(255); // background colour is white
  pg.fill(PGRAPHICS_COLOR); // circle is black
  pg.ellipse(pg.width/2, pg.height/2, 350, 350); // draw circle to offscreen graphics
  pg.endDraw(); 
  imageMode(CENTER); // center the circle 
}