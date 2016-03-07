color [] colors = {#2D4059, #EA5455, #F07B3F, #FFD460}; // theme colours
float t = 0; 

void setup() {
  size(540, 540);
  background(colors[0]);
}

void draw() {
  saveFrame("output2/frame#######.png");

  float n = noise(t);
  float colorsIndex = map(n, 0, 1, 0, 4);

  strokeWeight(0.5);
  strokeCap(SQUARE);
  for (int i = 0; i <= height; i+=2) {
    stroke(colors[(int)random(colorsIndex)]);
    line(0, i, width, i);
  }  
  t+=0.01;
}