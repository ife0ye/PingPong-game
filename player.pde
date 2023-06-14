class Player {
 int xpos;
 int ypos;
 float xpos2;
 float ypos2 = 10;
 float computerSpeed = 5;
 color paddlecolor = color (50);
 
Player(int screen_y)
{
xpos=SCREENX/2;
ypos=screen_y;
}

void move(int x){
if(x>SCREENX-PADDLELENGTH) xpos = SCREENX-PADDLELENGTH;
else xpos=x;
}

void draw()
{
  float ballPos = theBall.getX();
  if(xpos2 > ballPos)
  xpos2 -= computerSpeed;
  else if(xpos2 < ballPos)
  xpos2 += computerSpeed;
fill(paddlecolor);
rect(xpos, ypos, PADDLELENGTH, PADDLEHEIGHT);
rect (xpos2, ypos2, PADDLELENGTH, PADDLEHEIGHT);
}

}
