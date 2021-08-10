/**
 * Mouse Signals. 
 * 
 * Move and click the mouse to generate signals. 
 * The top row is the signal from "mouseX", 
 * the middle row is the signal from "mouseY",
 * and the bottom row is the signal from "mousePressed". 
 */
int[] years;
csv obj1;
value obj2;
draw_graph obj3;
int j = 0; 
void setup() {
  size(1500, 1000);
  noSmooth();
  
  obj1 = new csv("ecg.csv");
  years = obj1.convert_csv_to_array();
  obj2 = new value();
  obj3 = new draw_graph();
}

int arrayindex = 0;

void draw() {
  background(102);
  
  for (int i = 1; i < width; i++) { 
    obj2.yvals[i-1] = obj2.yvals[i]; 
  
  } 
  // Add the new values to the end of the array 
 
 
  obj2.yvals[width-1] =years[j];
  j+=1;
  obj3.showimage();
  fill(255);
  noStroke();

  
}
