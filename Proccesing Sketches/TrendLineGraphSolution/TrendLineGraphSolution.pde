void setup()
{
  size(500, 500);
  drawLineChart(rainFall, months);
}

float[] rainFall = {45,37,55,27,38,50,79,48,104,31,100,58}; 
String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

void drawLineChart(float[] arr, String[] horizLabels)
{
  float border = 50;
  float lineLen = (width - (border * 2.0f)) / (float) (arr.length - 1);
  for (int i = 0 ; i < arr.length - 1; i ++)
  {
    line(border + (i * lineLen), (height - border) - arr[i], border + ((i + 1) * lineLen), (height - border) - arr[i +1]); 
  }
  line(border, border, border, height - border);
  line(border, height - border, width - border, height - border);
  fill(0);
    textAlign(CENTER, CENTER);
  for (int i = 0 ; i < arr.length; i ++)
  {
    
    float x = border + (i * lineLen);
    float y = height - (border / 2);
    text(horizLabels[i].substring(0, 3), x, y);
  }
  for (int i = 0 ; i < height - (border * 2); i += 20)
  {
    float y = (height - border) - i;
    line(border - 10, y, border, y);
    text(i, border / 2, y); 
  }
}


void draw()
{
  
}