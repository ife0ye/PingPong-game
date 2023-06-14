Player thePlayer;
Ball theBall;
Player theComputerPlayer;
//PFont myFont;
boolean gameover;
void settings(){
  size(SCREENX, SCREENY);
}

void setup(){
  ellipseMode(RADIUS);
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  theComputerPlayer = new Player(SCREENY-215-PADDLEHEIGHT);
  theBall = new Ball();
  gameover = false;
  //myFont = loadFont("ArialMT-18.vlw"); 
  //textFont(myFont);
}

void draw(){
  background(0);
  thePlayer.move(mouseX);
  theComputerPlayer.update();
  theBall.update();
  theBall.collide(thePlayer);
  theBall.collide(theComputerPlayer);
  theBall.draw();
  thePlayer.draw();
  theComputerPlayer.draw();
  thePlayer.lives();
  //theComputerPlayer.lives();
}
void mousePressed()
{
   theBall.reset();
   gameover = false;
}
