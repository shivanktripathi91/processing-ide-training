
class draw_graph{
  
  void showimage(){
    
  for(int i = 1; i < width-1; i++) {
    // Draw the y-values
  stroke(255);
  int x1 = height/3+obj2.yvals[i-1]/3;
  int x2 = height/3+obj2.yvals[i+1]/3;
  int x = height/3+obj2.yvals[i]/3;
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

}
