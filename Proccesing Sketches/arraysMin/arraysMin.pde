void setup()
{
  size(500,500);
  background(255);
  for(int i=0; i<rainFall.length; i++)
  {
    println(months[i] + "\t"+ rainFall[i]);
  }
  for(String m:months)//for each loop
  {
    println(m);
  }
  println(maxIndex(rainFall));
  println(Sum(rainFall));
  println(Avg(rainFall));
  drawGraph(rainFall);
}

float Sum(float[] arr)
{
  float sum=0;
  for(float r:rainFall)//for each loop
  {
    sum+=r;
  }
  return sum;
}

float Avg(float[] arr)
{
  float sum=Sum(arr);// second Sum is the array from previous function SUM.
  
  return sum/(float)arr.length;
}

int maxIndex(float[] arr)
{
  float max = Float.MIN_VALUE;
  int pos = -1;
  for(int i=0; i<arr.length; i++)
  {
   if(arr[i]> max)
     {
       max =arr[i];
       pos = i;
     }
  }
  return pos;
}
float[] rainFall = {45,37,55,27,38,50,79,48,104,31,100,50};
String[] months= {"Jan","Feb","March", "April","May", "June", "July","Aug","Sept","Oct","Nov","Dec"};
//float[] fa;

void drawGraph(float[] rainFall)
{
  float barWidth=(float)width/rainFall.length;
  float maxValue =rainFall[maxIndex(rainFall)];
  float scaleFactor=height/maxValue;
  for(int i=0; i<rainFall.length; i++)
  {
    noStroke();
    fill(random(25,225),random(25,225),random(25,225),random(25,255));
    float x=i*barWidth;
    rect(x,height, barWidth,-rainFall[i]*scaleFactor);
  }
  //fa = new float[20]; //new is used because arrays are objects in Java
  //fa[0] = 100.0f;
  //println(fa[1]);
}
void draw()
{
}