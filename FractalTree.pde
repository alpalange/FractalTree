private double fractionLength = .8; 
private int smallestBranch = 30; 
private double branchAngle = .5;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2, 20, 20, 20);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, int R, int G, int B) 
{
  stroke(R,255,0);
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  int endX1 = (int) (branchLength * Math.cos(angle1) + x);
  int endY1 = (int) (branchLength * Math.sin(angle1) + y);
  int endX2 = (int) (branchLength * Math.cos(angle2) + x);
  int endY2 = (int) (branchLength * Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  R += 50;
  G += 20;
  B += 20;
  if (branchLength > smallestBranch){
    drawBranches(endX1, endY1, branchLength*fractionLength, angle1, R, G, B);
    drawBranches(endX2, endY2, branchLength*fractionLength, angle2, R, G, B);
  }
    
} 
