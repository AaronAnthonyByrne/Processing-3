void setup()
{
  size(500,500);
  background(255);
  drawBorder();
  drawGraph(rainFall);
 }
float[] rainFall = {45,37,55,27,38,50,79,48,104,31,100,50};
String[] months= {"Jan","Feb","March", "April","May", "June", "July","Aug","Sept","Oct","Nov","Dec"};
float borderStroke=30;

void drawBorder()
{
  stroke(0);
  
  line(borderStroke,height-borderStroke,borderStroke,borderStroke);//bottom border
  line(borderStroke,height-borderStroke,height-borderStroke,height-borderStroke);
}

void drawGraph(float[] rainFall)
{
  float monthWidth=(float)(width/rainFall.length)/2;
  float prevx,prevy,newx,newy;
  float scaleFactor=(float)height/150;
  
  prevy = (height -rainFall[0]-borderStroke);
  prevx=borderStroke;
  newx=monthWidth;
  
  for(int i=1;i<rainFall.length; i++)
  {
    newx=(monthWidth+newx);
    newy=(height -rainFall[i])-borderStroke;
    line(prevx,prevy,newx,newy);
    prevx=newx;
    prevy=newy;

  }
}
void draw()
{
}