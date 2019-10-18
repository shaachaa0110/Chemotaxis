Bacteria [] colony;
 void setup()   
 {     
 	size(500,500);
 	colony = new Bacteria[50];
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {  
 	background(255);  
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int myColor;
 	float targetX, targetY, dx, dy, x, y;
 	double followFrac;
 	Bacteria(){
 		x = (int)(Math.random()*500);
 		y = (int)(Math.random()*500);
 		followFrac = (Math.random()*0.05+0.01);
 		myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 	}
 	void show(){
 		fill(myColor);
 		ellipse(x, y, 10, 10);
 	}
 	void move(){
 		targetX = mouseX;
 		targetY = mouseY;
 		dx = targetX - x;
 		dy = targetY - y;
 		x += dx * followFrac + (int)(Math.random()*3)-1;
 		y += dy * followFrac + (int)(Math.random()*3)-1;
 	}
 }    