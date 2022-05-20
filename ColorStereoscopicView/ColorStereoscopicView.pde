LissajousCircle lsj;
LissajousCircle lsj2;

float angle = 0;
float time = 0;

void setup() {
  size(700, 700);
  lsj = new LissajousCircle(300, 3, 4, 15, 6);
  lsj.SetColor(50, 50, 250);
  lsj2 = new LissajousCircle(200, 17, 8, 9, 10);
  lsj2.SetColor(250, 50, 50);
}

void draw() {
  float delta = (millis() - time) / 1000;
  time = millis();
  
  angle += delta * 6.0;
  
  background(30);


  noStroke();
  fill(20, 50, 150);
  ellipse(width / 2, height / 2, width, width);

  noStroke();
  fill(20, 50, 120);
  ellipse(width / 2, height / 2, width - 10, width - 10);


  noStroke();
  fill(10, 10, 10);
  ellipse(width / 2, height / 2, width - 15, width - 15);

  lsj.DrawCircle(angle);
  lsj2.DrawCircle(angle);
  
  if (angle > 360) {
    angle -= 360;
  }
}
