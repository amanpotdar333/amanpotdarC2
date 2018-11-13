int rad=60;
float xpos,ypos;
float xspeed=2.8;
float yspeed=2.2;
float xpos1,ypos1;
int xdirection=1;
int ydirection=1;

void setup()
{
  size(500,500);
  noStroke();
  frameRate(60);
  ellipseMode(RADIUS);
  xpos=width/2;
  ypos=height/2;
}
void draw()
{
  background(102);
  xpos=xpos+(xspeed*xdirection);
  ypos=ypos+(yspeed*ydirection);
  xpos1=xpos-(xspeed*xdirection);
  ypos1=ypos-(yspeed*ydirection);
  
  if(xpos>width-rad||xpos<rad&&xpos1>width-rad||xpos<rad){
    xdirection*=-1;
    fill(200,0,0);
  }
  if(ypos>height-rad||ypos<rad&&ypos1>height-rad||ypos<rad){
    ydirection*=-1;
    fill(0,200,0);
  }
 
  ellipse(xpos,ypos,rad,rad);
  fill(0);
  pushMatrix();
  ellipse(xpos1,ypos1,rad,rad);
  fill(200,0,0);
  popMatrix();
  
}
  
