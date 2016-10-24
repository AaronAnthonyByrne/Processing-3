void setup()
{
  size(500, 500);
   
  float x, y;
  float radius = 200;
  float cx = width / 2, cy = height / 2;
  float points = 8;
  float thetaInc = TWO_PI / (points * 2);
  float px = cx, py = cy - radius;
  for(float p = 1 ; p <= (points * 2) ; p ++)
  {
    float r = radius;
    if (p % 2 == 1)
    {
      r /= 2;
    }
    
    float theta = p * thetaInc;
    x = cx + sin(theta) * r;
    y = cy - cos(theta) * r;
    line(px, py, x, y);
    px = x;
    py = y;
  }
  }



void draw()
{
}