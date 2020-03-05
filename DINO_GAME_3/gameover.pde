void gameover() {
  textSize(100);
  fill(0);
  text("YOU DIED", width/2, 200);
  textSize(40);
  fill(100);
  text("click to restart", width/2, 300);


  player1.setPosition(550, 420);

  points = 0;
  
  if (mousePressed) mode = game;
}
