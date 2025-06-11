int amount = 10;
int rad = 250;
float R[] = new float[amount];
float x[] = new float[amount];
float y[] = new float[amount];
float velX[] = new float[amount]; //направление движения
float velY[] = new float[amount];



void setup() {
 size(600, 400, P3D);
 smooth(8);
 stroke(0);
  
  for (int i = 0; i < amount; i++) {
    R[i] = random(15, 30); 
    x[i] = width/2;
    y[i] = height/2;
    velX[i] = random(3, 6) * ((int)random(0, 2) == 0 ? 1 : -1);
    velY[i] = random(3, 6) * ((int)random(0, 2) == 0 ? 1 : -1);
      
  }
}

void draw() {
  background(200);
  for(int i = 0; i < amount; i++){
    fill(0);
    circle(x[i], y[i], R[i]);
  }
  
  movingCircle();
  drawLine();

}




void drawLine(){
  for (int i = 0; i < amount; i++){
    for (int j = 0; j < i; j++){
      float distance = dist(x[i], y[i], x[j], y[j]);
      if (distance < rad){
        strokeWeight(map(distance, 0, rad, 5, 0.2));
        line(x[i], y[i], x[j], y[j]);
      }
    }
  }
}




void movingCircle() {
  for (int i = 0; i< amount; i++){
    x[i] += velX[i];
    y[i] += velY[i];
    if(x[i] < R[i]/2 || x[i] > width - R[i]/2) velX[i] = -velX[i];
    if(y[i] < R[i]/2 || y[i] > height - R[i]/2) velY[i] = -velY[i];
  }
}
