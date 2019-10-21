Bubbles [] colony;
int middle = 250;
 void setup()   
 {     
 	size(500,500);
 	colony = new Bubbles[500];
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bubbles();
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
 class Bubbles    
 {     
 	int myColor, dist;
 	float targetX, targetY, dx, dy, x, y;
 	double followFrac, quadrant;
 	Bubbles(){
 		dist = (int)(Math.random()*200)-100;
 		x = (int)(Math.random()*500);
 		y = (int)(Math.random()*500);
 		followFrac = (Math.random()*0.001+0.01);
 		myColor = color((int)(Math.random()*0), (int)(Math.random()*200), (int)(Math.random()*255));
 	}
 	void show(){
 		fill(myColor);
 		ellipse(x, y, 10, 10);
 	}
 	void move(){
 		quadrant = Math.random();
 		if(quadrant < 0.25){
 			targetX = mouseX - dist;
 			targetY = mouseY - dist;
 		}else if(quadrant < 0.5){
 			targetX = mouseX + dist;
 			targetY = mouseY + dist;
 		}else if(quadrant < 0.75){
 			targetX = mouseX + dist;
 			targetY = mouseY - dist;
 		}else{
 			targetX = mouseX - dist;
 			targetY = mouseY + dist;
 		}
 		dx = targetX - x;
 		dy = targetY - y;
 		x += dx * followFrac + (int)(Math.random()*3)-1;
 		y += dy * followFrac + (int)(Math.random()*3)-1;
 	}
 }    