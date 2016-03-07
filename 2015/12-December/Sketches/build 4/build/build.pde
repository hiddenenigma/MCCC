color [] colors = {#000000, #FFFFFF, #000000, #FFFFFF}; // theme colours
float t = 0; 
float x;

void setup() {
  size(600, 600);
  background(colors[0]);
}

void draw() {

  float n = noise(t);
  float colorsIndex = map(n, 0, 1, 0, 4);

  strokeWeight(n);
  strokeCap(SQUARE);
  translate(0,4);
  for (int i = 0; i < height; i+=10) {
    stroke(colors[(int)random(colorsIndex)]);
    line(x, i, width, i);
  }  
  t+=0.01;
  x+=2;
  if(x==width) {
    x=0;
  }
}