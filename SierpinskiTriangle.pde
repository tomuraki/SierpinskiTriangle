public void setup()
{
	size(300,300);
}
public void draw()
{
	background(0,0,0);
	fill(mouseY,mouseX,mouseY);
	sierpinski(0,300,mouseX);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
		triangle(x,y, x+len/4,y-len/2, x+len/2,y);
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}


		

		
	//https://github.com/erickango/SierpinskiTriangle/blob/gh-pages/SierpinskiTriangle.pde

} 
