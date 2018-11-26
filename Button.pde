class Button {
 PVector Pos = new PVector(0, 0);
 float Width = 0;
 float Height = 0;
 color Color;
 String Text;
 Boolean Pressed = false;
 Boolean Clicked = false;
 Boolean Hover = false;
 
 // Button constructor
 
 Button(int x, int y, int w, int h, String t, int r, int g, int b) {
   Pos.x = x;
   Pos.y = y;
   Width = w;
   Height = h;
   Color = color(r, g, b);
   Text = t;
 }
 


void isHover() {
  if(mouseX >= Pos.x && mouseX <= Pos.x + Width && mouseY >= Pos.y && mouseY <= Pos.y + Height) {
    Color = color(59, 91, 179);
  } else {
    Color = color(120, 139, 201);
  }
}
 void update() { // makes sure that the button is able to be clicked
   if(mousePressed == true && mouseButton == LEFT && Pressed == false) {
     Pressed = true;
     if(mouseX >= Pos.x && mouseX <= Pos.x + Width && mouseY >= Pos.y && mouseY <= Pos.y + Height) {
       Clicked = true;
   
     }
   } 
    else {
      Clicked = false;
      
    }  
    
    if(mousePressed !=true) { // this if statement makes sure that 1 click = 1 vote, regardless of the time the button is being held down
      Pressed = false;
    }
 }
 void display(){ //draws the button when placed in void draw() or void setup()
   fill(Color); 
   stroke(255);
   strokeWeight(2);
   rect(Pos.x, Pos.y, Width, Height, 10);
   fill(255);
   textSize(18);
   textAlign(CENTER, CENTER);
   text(Text, Pos.x + (Width/2), Pos.y +(Height/2));
 }
 
 boolean isClicked() { //Checkes if the button has been clicked used in an if statement
   return Clicked;
 }
 
 
}
