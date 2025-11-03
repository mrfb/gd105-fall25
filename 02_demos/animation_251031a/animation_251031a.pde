void setup(){
  size(800, 800);
  noFill();
}

//circle(0, 0, width);

void draw(){
  background(255);
  translate(width/2, height/2);
  line(-9999, 0, 9999, 0);
  line(0, -9999, 0, 9999);
  
  // outer circle
  circle(0, 0, width * .6);
  // inner circle
  circle(0, 0, width * .5);
  
  // diamond
  rectMode(CENTER);
  rotate(radians(frameCount));
  //rotate(TAU / 8.0);
  //rotate(TAU * 0.125);
  square(0, 0, width * .3);
  
  // cross
  
  if(frameCount < 360){
    saveFrame("frames/####.png");
  }
  
}
