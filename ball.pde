class Ball {
  float x;
  float y;
  float dx;
  float dy;
  int radius;
  color ballColor = color(200, 100, 50);

  Ball() {
    x = random(SCREENX/4, SCREENX/2);
    y = random(SCREENY/4, SCREENY/2);
    dx = random(1, 2);
    dy = random(1, 2);
    radius = 10;
  }

  void move() {
    x = x+dx;
    y = y+dy;
  }
  void draw() {
    fill(ballColor);
    ellipse(int(x), int(y), radius, radius);
  }
  void collide(Player tp) {
    if(x > width - radius)
    dx *= -1;
    if(x < radius)
    dx *= -1;
    if (x-radius <=0) dx=-dx;
    else if (x+radius>=SCREENX) dx=-dx;
    if (y+radius >= tp.ypos2 && y-radius<tp.ypos2+PADDLEHEIGHT &&
      x >=tp.xpos && x <=tp.xpos+PADDLELENGTH) {
      println("collided!");
      dy=-dy;
    }
    
    if (x-radius <=0) dx=-dx;
    else if (x+radius>=SCREENX) dx=-dx;
    if (y+radius >= tp.ypos && y-radius<tp.ypos+PADDLEHEIGHT &&
      x >=tp.xpos && x <=tp.xpos+PADDLELENGTH) {
      println("collided!");
      dy=-dy;
    }
  }
  float getX(){
   return x; 
  }
}
