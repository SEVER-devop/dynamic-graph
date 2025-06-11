
int amount = 1000;
float R[] = new float[amount];
float x[] = new float[amount];
float y[] = new float[amount];
float velX[] = new float[amount]; //направление движения
float velY[] = new float[amount];



void setup() {
 size(600, 400, P3D);
 smooth(8);
  //frameRate(300);
  //noStroke(); 
  
  
  for (int i = 0; i < amount; i++) {
    R[i] = random(15, 30); 
    x[i] = width/2;
    y[i] = height/2;
    velX[i] = random(5, 8);
    velY[i] = random(5, 8);
  }
}

void draw() {
  background(200); 
  
  noStroke();
  fill(35, 92, 232);
  
  for(int i = 0; i < amount; i++){
    circle(x[i], y[i], R[i]);
  }
  
  movingCircle(); 

}



void movingCircle() {
  for(int i = 0; i< amount; i++){
    x[i] += velX[i];
    y[i] += velY[i];
    if(x[i] < R[i]/2 || x[i] > width - R[i]/2) velX[i] = -velX[i];
    if(y[i] < R[i]/2 || y[i] > height - R[i]/2) velY[i] = -velY[i];
  }
}
