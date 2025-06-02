
int amount = 10;
float R[] = new float[amount];
float velX = 5.0; //направление движения
float velY = 5.0;
float x;
float y;


void setup() {
 size(600, 400, P3D);
 smooth(8);
  //frameRate(300);
  //noStroke(); 
  
  x = width/2;
  y = height/2;
}

void draw() {
  background(200); 
  
  noStroke();
  fill(35, 92, 232);
  circle(x, y, R);
  
  movingCircle(); 

}



void movingCircle() {
  x += velX;
  y += velY;
  if(x < R/2 || x > width - R/2) velX = -velX;
  if(y < R/2 || y > height - R/2) velY = -velY;
}
