void setup()
{
  size(500,500);
  for(int i=0; i<rainFall.length; i++)
  {
    println(months[i] + "\t"+ rainFall[i]);
  }
  for(String m:months)//for each loop
  {
    println(m);
  }
  int index;
  println(maxIndex(rainFall));
  
}

int maxIndex(float[] arr)
{
  float max = Float.MIN_VALUE;
  int pos = -1;
  for(int i=0; i<arr.length; i++)
  {
   if(arr[i]>max)
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

void draw()
{
  //fa = new float[20]; //new is used because arrays are objects in Java
  //fa[0] = 100.0f;
  //println(fa[1]);
}