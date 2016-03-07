color [] colors = {#2D4059, #EA5455, #F07B3F, #FFD460}; // theme colours

void setup() {
  size(540, 540);
}

void draw() {
  //saveFrame("output/frame#######.png");
  strokeWeight(9);
  strokeCap(SQUARE);
  for (int i = 0; i <= height; i+=9) {
   stroke(colors[(int)random(4)]);
   line(0,i,width,i);
  }  
}