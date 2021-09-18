void setup() {
  size(510, 510);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift=true;
  for (int y=459; y>0; y-=25){
    for(int x=490; x>37; x-=30) {
      if(shift==true){
        scale(x+10,y);
      }
      else {
        scale(x,y);
      }
  }
  if(shift ==false) {
      shift = true;
    }
    else {
      shift = false;
    }
 }
}
void scale(int x, int y) {
  int r = 200 + (int)((Math.random()*50));
  int g = 170 + (int)((Math.random()*50));
  int b = 130 + (int)((Math.random()*50));
  fill(0,0,0);
  bezier(x,y,x+5,y+30,x-30,y+80,x-30,y);
  fill(r,g,b);
  bezier(x,y,x,y+30,x-30,y+70,x-25,y);
}

