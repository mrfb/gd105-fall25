PImage gamera;
PVector gameraLocation;
PVector gameraVelocity;
boolean dragging;

void setup(){
  size(800, 800);
  gamera = loadImage("turt.png");
  gameraLocation = new PVector(width/2, height/2);
  gameraVelocity = PVector.random2D().mult(5);
  background(#ff00ff);
  imageMode(CENTER);
}

void draw(){
  spinnyImage(gamera, gameraLocation, frameCount * 0.01);
  gameraLocation.add(gameraVelocity);
  
  // if touch wall, then go back
  if(gameraLocation.y > height || gameraLocation.y < 0){
    gameraVelocity.y *= -1;
  }
  
  if(gameraLocation.x > width || gameraLocation.x < 0){
    gameraVelocity.x *= -1;
  }
  
  if(dragging){
    gameraLocation.set(mouseX, mouseY);
  }
}

void spinnyImage(PImage img, PVector location, float pctTurn){
  resetMatrix();
  translate(location.x, location.y);
  rotate(pctTurn * TAU);
  image(img, 0, 0);
}

void mousePressed(){
  if(dist(mouseX, mouseY, gameraLocation.x, gameraLocation.y) < 100){
    dragging = true;
  }
}

void mouseReleased(){
  dragging = false;
}
  
