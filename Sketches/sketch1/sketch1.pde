//variables
float rad;
float rad2;
int r, g, b;

void setup(){
  background(255);
  size(400,400);
  rad = 50;
  r = 100;
  g = 100;
  b = 100;
}

void draw(){
  background(255,255,255,0);
  
  rad=random(30,100);
  rad2=random(30,100);
  r = (int)random(0,255);
  g = (int)random(0,255);
  b = (int)random(0,255);
  stroke(r,g,b);
  ellipse(mouseX,mouseY,rad,rad2);
}
