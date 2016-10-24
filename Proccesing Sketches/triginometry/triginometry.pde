void setup()
{
  size(500,500);
  
  float h = 176;
  float o;
  float a;
  float theta = 27.0;
  
  o = sin(radians(theta))*h;
  a = cos(radians(theta))*h;
  
  float x,y;
  x=50;
  y=100;
  
  triangle(x,y,x,y+a,x+o,y);
}