Bacteria [] colony;
 void setup()   
 {     
 	size(500,500);
 	colony = new Bacteria[25];
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(){
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 		myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 	}
 	void show(){
 		fill(myColor);
 		ellipse(myX, myY, 15, 15);
 	}
 	void move(){
 		myX = myX + (int)(Math.random()*10-5);
 		myY = myY + (int)(Math.random()*10-5);
 	}
 }    