void setup()
{
  //Start of the sketch
  size(500,500);
}

void draw()
{
  //will attempt to call this function 60 times per second. frames per second.
  //variable a symbol the repersents a value that can change.
  
  //Built in variables
  //mouseX, mouseY - gives the location of the mouse cursor
  //width,height
  //pmouseX,pmouseY - location of x and y from the pervious frame.
  //frameCount-current frame.
  
  ellipse(width / 2, height / 2, mouseX,mouseY);
  println(mouseX);
  println(frameCount);
  
}