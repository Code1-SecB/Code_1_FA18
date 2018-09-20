void setup(){
  size(500,500); 
  background(0);
}

void draw(){
 // changing the background color 
 // if will get brighter as the mouse moves to right
 // in increments of 100
   if(mouseX < 100) {
     println("Mouse is less than 100");
     background(0);
     
   } else if(mouseX > 100 && mouseX < 200){
     println("Mouse is past 100");
     background(50);
     
   } else if(mouseX > 200 && mouseX < 300) {
     println("Mouse is past 200"); 
     background(100);
     
   } else if (mouseX > 300 && mouseX < 400){
     println("Mouse is past 300");
     background(150);
     
   } else {
     background(200); 
   }
}
