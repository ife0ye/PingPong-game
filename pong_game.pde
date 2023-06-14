Player thePlayer;
Player computer;
Ball theBall;
void settings(){
size(SCREENX, SCREENY);
}
void setup(){
thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
computer = new Player (SCREENY-MARGIN-PADDLEHEIGHT);
theBall = new Ball();
}
void draw() {
background(0);
thePlayer.move(mouseX);
theBall.move();
theBall.collide(thePlayer);
thePlayer.draw();
theBall.draw();
}
