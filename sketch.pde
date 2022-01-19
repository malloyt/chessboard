String cursordetection;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  noStroke();
  fill(#B6DBFA); //upper left
  rect(0, 0, 400, 400);
  fill(#B6FAC1); //upper right
  rect(400, 0, 400, 400);
  fill(#FAB6D0); //bottom left
  rect(0, 400, 400, 400);
  fill(#D3B6FA); //bottom right
  rect(400, 400, 400, 400);
  fill(0); //instruction box
  rect(250, 250, 300, 300);

  if (mouseX <= 400 && mouseY <=400 ) {
    //if(mouseY
    //upper left
    cursor(ARROW);
    cursordetection = "ARROW";
  } else if (mouseX >= 400 && mouseY <= 400) {
    //upper right
    cursor(HAND);
    cursordetection = "HAND";
  } else if (mouseX <= 400 && mouseY >= 400) {
    //bottom left
    cursor (CROSS);
    cursordetection = "CROSS";
  } else {
    //bottom right
    cursor(TEXT);
    cursordetection = "TEXT";
  }
  
  

  fill(255);
  textAlign(CENTER);
  textSize(40);
  text(cursordetection, 400, 400);
}
