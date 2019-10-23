//find the hive game;
Bees [] colony;
Hive [] home;
int middle = 250;
int X_POS, Y_POS, SIZE;
void setup()   
{     
 	size(500,500);
 	colony = new Bees[500];
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bees();
 	}
 	for(int j = 0; j < home.length; j++){
 		home[j] = new Hive();
 	}
 }   
 void draw()   
 {  
 	background(255);  
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
 	home.make();
 	if(get(mouseX, mouseY) == color(200)){
 		home.complete();
 	}
 }  
 class Hive
 {
 	Hive(){
 		X_POS = (int)(Math.random()*500);
 		Y_POS = (int)(Math.random()*500);
 		SIZE = (int)(Math.random()*50+50);
 	}
 	void make(){
 		fill(200);
 		ellipse(X_POS, Y_POS, SIZE, SIZE);
 	}
 	void complete(){
 		fill(0, 255, 0);
 		ellipse(X_POS, Y_POS, SIZE, SIZE);
 	}
 }
 class Bees    
 {     
 	int myColor, dist, yellow;
 	float targetX, targetY, distanceX, distanceY, x, y;
 	double followFrac, quadrant;
 	Bees(){
 		dist = (int)(Math.random()*500);
 		x = (int)(Math.random()*500);
 		y = (int)(Math.random()*500);
 		yellow = (int)(Math.random()*150+100);
 		myColor = color(yellow, yellow, (int)(Math.random()*0));
 	}
 	void show(){
 		fill(myColor);
 		ellipse(x, y, 15, 10);
 		fill(0);
 		ellipse(x + 5, y, 3, 3);
 		fill(200, 200, 200, 100);
 		ellipse(x, y-5, 4, 4);
 	}
 	void move(){
 		followFrac = (Math.random()*0.03+0.01);
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
 		distanceX = targetX - x;
 		distanceY = targetY - y;
 		x += distanceX * followFrac + (int)(Math.random()*3)-1;
 		y += distanceY * followFrac + (int)(Math.random()*3)-1;
 	}
 }    