void setup()
{
	size(500,550);
	noLoop();
}
void draw()
{
	background(random(255),random(255),random(255));
	int total = 0;
	for(int y = 5; y <= 450; y = y+55)
  	{
    	for(int x = 5; x <= 500; x = x+55)
    	{
      		Die one = new Die(x,y);
      		one.show();
      		one.roll();
      		total = total + one.numDots;
    	}
  	}

  	fill(0,0,0);
  	textSize(18);
  	text("total number of dots: " + total, 140, 530);
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;//variable declarations here
	int numDots = (int)(Math.random()*6+1);
	
	Die(int x, int y) //constructor
	{
		myX = x; //variable initializations here
		myY = y;
	}
	void roll()
	{
		numDots = (int)(Math.random()*6+1);
		fill(0);
		if (numDots == 1){
			ellipse(myX+25,myY+25,10,10);}
		else if (numDots == 2){
			ellipse(myX+15,myY+25,10,10);
			ellipse(myX+35,myY+25,10,10);}
		else if (numDots == 3){
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+35,10,10);}
		else if (numDots == 4){
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+35,10,10);}
		else if (numDots == 5){
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+35,myY+15,10,10);
			ellipse(myX+15,myY+35,10,10);
			ellipse(myX+35,myY+35,10,10);
			ellipse(myX+25,myY+25,10,10);}
		else{
			ellipse(myX+15,myY+25,10,10);
			ellipse(myX+35,myY+25,10,10);
			ellipse(myX+15,myY+13,10,10);
			ellipse(myX+35,myY+13,10,10);
			ellipse(myX+15,myY+38,10,10);
			ellipse(myX+35,myY+38,10,10);
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50,10);
	}
}
