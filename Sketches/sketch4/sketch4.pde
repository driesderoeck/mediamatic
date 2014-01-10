class Jumpy {
  int radius;
  int xpos,ypos;
  int xstep, ystep;
  
  Jumpy(int radius, int xstep, int ystep, int id){
    this.radius = radius;
    this.xstep = xstep;
    this.ystep = ystep;
    
    xpos = width/2;
    ypos = height/2;
    
    println("created with id: " + id);
  }
  
  void drawCircle(){
  xpos = xpos + xstep;
  ypos = ypos + ystep;
  ellipse(xpos,ypos,radius,radius);
  }
  
  void drawBouncyCircle(){
  xpos = xpos + xstep;
  ypos = ypos + ystep;
  ellipse(xpos,ypos,radius,radius);
  
  if(xpos >= width-(radius/2) || xpos <= radius/2){
    xstep = xstep * -1; 
  }
  
  if(ypos >= height-(radius/2) || ypos <= radius/2){
    ystep = ystep * -1; 
  }
  
}

 void reset() {
  xpos = width/2;
  ypos = height/2;
}
  
}

Jumpy myJumpy;
//array
int amount = 25;
ArrayList<Jumpy> circles;

void setup(){
  circles = new ArrayList<Jumpy>();
  size(400,400);
  background(255);
  //myJumpy = new Jumpy(10,10,5,0);
  
  for(int i=0;i<amount;i++){
  int radius = (int)random(40,80);
  int xstep = (int)random(1,8);
  int ystep = (int)random(1,8);
  circles.add(new Jumpy(radius, xstep, ystep, i));  
  } 
}

void draw(){
  background(255);
  //myJumpy.drawBouncyCircle();
  
  for (int i=0;i<amount;i++){
  circles.get(i).drawBouncyCircle();
  }
}

void mousePressed(){
 for (int i=0;i<amount;i++){
 circles.get(i).reset();
 }
}
