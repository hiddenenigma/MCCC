color [] colors = {#2D4059, #EA5455, #F07B3F, #FFD460}; // theme colours
float t = 0; 

float x;

void setup() {
  size(540, 540);
  background(colors[0]);
}

void draw() {
  //saveFrame("output/frame#######.png");

  float n = noise(t);
  float colorsIndex = map(n, 0, 1, 0, 4);

  strokeWeight(mouseY);
  strokeCap(SQUARE);
  for (int i = 0; i <= height+200; i+=2) {
    stroke(colors[(int)random(colorsIndex)]);
    line(x, i, width, i);
  }  
  t+=0.01;
  x++;
}