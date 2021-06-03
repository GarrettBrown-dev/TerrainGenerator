int cols, rows;
int scl = 20;

void setup() {
  size(600, 600, P3D);
  int w = 600;
  int h = 600;
  cols = w / scl;
  rows = h / scl;
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  
  translate(width / 2, height / 2);
  rotateX(PI / 3);
  
  for (int y = 0; y < rows; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x * scl, y * scl);
      vertex(x * scl,(y + 1) * scl);
      //rect(x * scl, y * scl, scl, scl);
    }
    endShape();
 }
 }