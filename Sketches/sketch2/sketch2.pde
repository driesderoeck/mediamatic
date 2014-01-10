void setup() {
  background(255);
  size(400,400);  
}

void draw() {
   for(int i=0;i<50;i++){     
    int rad = (int)random(10,40);
    float posx = random(0+rad,width-rad);
    float posy = random(0+rad,height-rad);

   // background(255);
    noFill();
    ellipse(posx,posy,rad,rad);
  }
}

void mousePressed() {
  background(255);
}
