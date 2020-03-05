void sprites() {


  player1.attachImage(currentAction[costumeNum]);

  if (frameCount%3==0) {
    costumeNum++;
    if (costumeNum >= currentAction.length) {
      costumeNum=0;
    }
  }
}
