Bees [] colony;
Honey [] dots;
int middle = 250;
void setup()   
{     
 	size(500,500);
 	colony = new Bees[500];
 	for(int i = 0; i < colony.length; i++){
 		colony[i] = new Bees();
 	}
 	dots = new Honey[25];
 	for(int j = 0; j < dots.length; j++){
 		dots[j] = new Honey();
 	}
 }   
 void draw()   
 {  
 	background(255);  
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
 	for(int j = 0; j < dots.length; j++){
 		dots[j].show();
 	}
 }  
/*
 class Honey
 {
 	int center, xOne, yOne, xTwo, yTwo, xThree, yThree, myHoneyColor, sizeFrac;
 	Honey(){
 		
 		center = (int)(Math.random()*500);
 		sizeFrac = 10;
 		xOne = center;
 		yOne = center - sizeFrac;
 		xTwo = center - sizeFrac;
 		yTwo = center - sizeFrac;
 		xThree = center + sizeFrac;
 		yThree = center + sizeFrac;
 		
 		xOne = (int)(Math.random()*500);
 		yOne = (int)(Math.random()*500);
 		xTwo = (int)(Math.random()*500);
 		yTwo = (int)(Math.random()*500);
 		xThree = (int)(Math.random()*500);
 		yThree = (int)(Math.random()*500);
 		myHoneyColor = color(175, 175, 0);
 	}
 	void show(){
 		fill(myHoneyColor);
 		triangle(xOne, yOne, xTwo, yTwo, xThree, yThree);
 	}
 }
*/
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
 		followFrac = (Math.random()*0.001+0.01);
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