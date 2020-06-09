float arr[] = new float[800];
int i, j;

void setup() {
  size(800,500);
  i = 0;
  j = 0;
  background(0);
  generateLines(); //generates lines of varying lengths randomly
  show();
}

void draw() {
  for (int j = 0; j < arr.length-i-1; j++) {
     if (arr[j] < arr[j+1]) {
          // swap temp and arr[i]
          float temp = arr[j];
          arr[j] = arr[j+1];
          arr[j+1] = temp;
     }
  }
  background(0);
  show(); // updating the lines after one cycle of j
  if (j==(arr.length-i-1)) {
    j = 0;
    i++;
  }
  if (i==(arr.length-1))
    noLoop();
}

void generateLines() {
  for (int i=0; i<width; i++) {
    float h = random(1, height);
    arr[i] = h;
  }
}

void show() {
  for (int i=0; i<arr.length; i++) {
    stroke(#05FF2C);
    line(i, height, i, arr[i]);
  }
}
