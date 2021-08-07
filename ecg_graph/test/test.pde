

/**
 * Mouse Signals. 
 * 
 * Move and click the mouse to generate signals. 
 * The top row is the signal from "mouseX", 
 * the middle row is the signal from "mouseY",
 * and the bottom row is the signal from "mousePressed". 
 */
 
int[] yvals;
String filename = "ecg.csv";
String[] rawData;
int[] years;
int j = 0; 
void setup() {
  size(1500, 1000);
  noSmooth();
  yvals = new int[width];
   rawData = loadStrings(filename);
   years = new int[rawData.length];
  for(int i=1;i<rawData.length;i++){
    String [] thisRow = split(rawData[i],",");
    years[i-1] = int(thisRow[1]);
  }
 
}

int arrayindex = 0;

void draw() {
  background(102);
  
  for (int i = 1; i < width; i++) { 
    yvals[i-1] = yvals[i]; 
  
  } 
  // Add the new values to the end of the array 
 
 
  yvals[width-1] =years[j];
  j+=1;
  fill(255);
  noStroke();
  rect(0, height, width, height);

  for(int i = 1; i < width-1; i++) {
    // Draw the y-values
  stroke(255);
  int x1 = height/3+yvals[i-1]/3;
  int x2 = height/3+yvals[i+1]/3;
  int x = height/3+yvals[i]/3;
  float mapped_x1 = map(x1,-5204,1301,0,height/2);
  float mapped_x = map(x,-5204,1301,0,height/2);
    line(i,mapped_x1,i,mapped_x);
    
   if((x>x2 && x>x1) && x>400){
     fill(255,0,0);
     ellipseMode(CENTER);
     ellipse(i,mapped_x,10,10);
    }
  if((x<x2 && x<x1) && x<10){
    fill(255,0,0);
     ellipseMode(CENTER);
     ellipse(i,mapped_x,10,10); 
  }
  }
}
