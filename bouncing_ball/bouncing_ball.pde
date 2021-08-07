float x = 400;
float y = 300;
float xspeed = 5;
float yspeed = 5;
void setup(){
  size(800,600);
  
}

void draw(){
  background(0);
  x += xspeed;
  if(x>=width || x<=0){
    xspeed*=-1;    
  }
  y+=yspeed;
  if(y>=height || y<=0){
  yspeed*=-1;
  }
  
  ellipse(x,y, 50,50);
}
