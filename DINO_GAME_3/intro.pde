void intro () {

  background(100);
  
  textSize(200);
  fill(0);
  text("DINO GAME", width/2, 300);

  
  
  textSize(80);
  
  
  fill(50);



  if (dist(mouseX, mouseY, width/2, 500)<60) {
    if (mousePressed) mode = game;
    textSize(90);
  }
  
  text("play", width/2,500);
}
