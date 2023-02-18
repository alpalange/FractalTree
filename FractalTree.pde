private double fractionLength = .79; 
private int smallestBranch = 15; 
private double branchAngle = .555;  
public void setup() 
{   
  size(640,500);    
  noLoop(); 
} 
public void draw() 
{   
  background(30, 25, 50);   
  stroke(80,50,50);  
  strokeWeight(11);
  line(320,500,320,400);   
  drawBranches(320,400,100,3*Math.PI/2, 100, 60, 60, 5);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, int R, int G, int B, int sw) 
{
  stroke(R,G,B);
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  int endX1 = (int) (branchLength * Math.cos(angle1) + x);
  int endY1 = (int) (branchLength * Math.sin(angle1) + y);
  int endX2 = (int) (branchLength * Math.cos(angle2) + x);
  int endY2 = (int) (branchLength * Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  R += 25;
  G += 10;
  B += 10;
  //sw--;
  strokeWeight(sw);
  if (branchLength > smallestBranch){
    drawBranches(endX1, endY1, branchLength*fractionLength, angle1, R, G, B, sw);
    drawBranches(endX2, endY2, branchLength*fractionLength, angle2, R, G, B, sw);
  }
    
} 
