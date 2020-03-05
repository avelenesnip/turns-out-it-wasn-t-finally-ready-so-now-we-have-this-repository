void game() {

  background(#E0FFFF);


  pushMatrix();
  translate (-player1.getX() + width/2 + 100, -player1.getY() + height/2 + 100);
  world.step();  
  world.draw();
  popMatrix();


  vx = 0;
  vy = 0;


  if (player1.getX() < 500) go = true;
  if (player1.getX() > 9500) go = false;

  if (go == true) {
    vx = 500;
    currentAction = runright;
  }

  if (go == false) {
    vx = -500;
    currentAction = runleft;
  }



  ArrayList<FContact> contactsdeath = player1.getContacts();

  for (FContact cont : contactsdeath) {
    if (cont.contains ("treeTop") ) {
      mode = gameover;
    }
  }

  for (FContact cont : contactsdeath) {
    if (cont.contains ("treeTrunk") ) {
      mode = gameover;
    }
  }


  if (player1.getX() > 1000 && player1.getY() > 2000) {
    player1.setPosition(900, 435);
  }


  ArrayList<FContact> contacts1 = player1.getContacts();
  if (upkey && contacts1.size() > 0) player1.setVelocity (player1.getVelocityX(), -1390);

  player1.setVelocity (vx, player1.getVelocityY());
  
  if (player1.getX() >= 9500) points++;
  if (player1.getX() <= 500) points++;
  
  println(player1.getX());
  
  textSize(50);
  fill (40);
  text("Points: "+points, width-100, 100);
  
  if (points > highestscore) highestscore = points;
  
  textSize(20);
  
  text ("Highest Score: "+highestscore, width-100, height - 30);

  sprites();
}///////////////////////////////////////////////////////////////////////////////////////;;;;;;;;;;;;;;;;;;;;


void keyPressed() {/////////////////////////////////////////////////////;;;;;;;;;;;;;;;;;;;;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == UP) upkey = true;
}



void keyReleased() {
  if (keyCode == DOWN) downkey = false;
  if (keyCode == UP) upkey = false;
}////////////////////////////////////////////////////////////////////////;;;;;;;;;;;;;;;;;;;;
