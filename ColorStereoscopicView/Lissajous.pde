class LissajousCircle {
  float radius = 1;
  float a = 1, b = 1, c = 1, d = 1;
  float red = 250, green = 250, blue = 0;

  public LissajousCircle(float r, float _a, float _b, float _c, float _d) {
    radius = r;
    a = _a;
    b = _b;
    c = _c;
    d = _d;
  }
  
  public void SetColor(int r, int g, int b) {
    red = r;
    green = g;
    blue = b;
  }

  public void DrawCircle(float degree) {
    float lastX = 0, lastY = 0;

    strokeWeight(3);
    for (int i = 0; i < 1000; i++) {
      float angle = radians(map(i, 0, 360, 0, degree));
      float x = radius * cos(a * angle) * sin(c * angle);
      float y = radius * sin(b * angle) * sin(d * angle);

      float l = sqrt((x * x) + (y * y));

      x += width / 2;
      y += height / 2;

      noFill();
      stroke(red * (1 - map(l, 0, width - 50, 0, 1)), green * (1 - map(l, 0, width - 50, 0, 1)), blue * map(l, 0, width, 0, 1) + 50);
      if (i == 0) {
        point(x, y);
      } else {
        line(lastX, lastY, x, y);
      }

      lastX = x;
      lastY = y;
    }
  }
}
