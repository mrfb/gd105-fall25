void setup(){
  size(800, 800);
}

void draw(){
  background(255);
  
  for(int i = 5; i <= 42; i++){
    int gap = 17;
    line(width - gap * i, height * 0.66,
         width - gap * i, height * 0.88);
  }
  
}
