Button btn1, btn2, btn3, btn4, btn5;
int v1, v2, v3, v4, v5;
int screen = 0;
void setup() {
  size(800, 480);
  btn1 = new Button(100, height/2, 100, 50, "Option 1", 120, 139, 201);
  btn2 = new Button(220, height/2, 100, 50, "Option 2", 120, 139, 201);
  btn3 = new Button(340, height/2, 100, 50, "Option 3", 120, 139, 201);
  btn4 = new Button(460, height/2, 100, 50, "Option 4", 120, 139, 201);
  btn5 = new Button(580, height/2, 100, 50, "Option 5", 120, 139, 201);   
}

void draw() {
  
  if(screen == 0) {
  background(120, 139, 201); 
  btn1.display();
  btn2.display();
  btn3.display();
  btn4.display();
  btn5.display();
  
  btn1.isHover(); 
  btn2.isHover();
  btn3.isHover();
  btn4.isHover();
  btn5.isHover();
  
  btn1.update();
  btn2.update();
  btn3.update();
  btn4.update();
  btn5.update();
  
  text(v1+v2+v3+v4+v5 + " vote(s) so far ", width/2, 100);
  
  if(btn1.isClicked()){
    v1 = v1+1;
  }
  
  if(btn2.isClicked()){
    v2 = v2+1;
  }
  
  if(btn3.isClicked()){
    v3 = v3+1; 
  }
  
  if(btn4.isClicked()){
    v4 = v4+1;  
  }
  
  if(btn5.isClicked()){
    v5 = v5+1;
  }
 
 if (v1 + v2 + v3 + v4 + v5 >= 10) {
   screen = 1;
 }
 
 if (screen == 1) {
   background(120, 139, 201);
   drawCoordinate();
   drawBars();
 }
}
}

void drawCoordinate(){
  for (int i = 1; i <= 5; i++){   // Drawing numbers for the X axis from 1 to 5
   int horX = 30;
   int horY = 350;
   textSize(14);
   fill(255);
   text(i, horX + i*100 , 460);
 }
 stroke(255);
 line(80, 430, 600, 430);
 
 for (int i = 10; i >= 0; i--){   // Drawing numbers for the Y axis from 0 to 10
   int verX = 45;
   int verY = 0;
   textSize(12);
   fill(255);
   text(i, verX, -i*37 + 430);
   println(i);
 }
 stroke(255);
 line(80, 430, 80, 52);
}

void drawBars(){
  noStroke();
  rectMode(CORNER);
  fill(255);
  rect(110, 429, 50, v1 * -39);
  
  fill(221, 89, 82);
  rect(210, 429, 50, v2 * -39);
  
  fill(224, 213, 150);
  rect(310, 429, 50, v3 * -39);
  
  fill(255, 214, 81);
  rect(410, 429, 50, v4 * -39);
  
  fill(68, 64, 52);
  rect(510, 429, 50, v5 * -39);
}
