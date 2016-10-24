void setup()
{
  size(500, 500);
  
  cellWidth= width/ (float) colCount;
  cellHeight = height/ (float) rowCount;

  toggle(0,5, true);
  toggle(0,5, true);
  toggle(0,5, true);
}


void toggle(int row, int col, boolean alive)
{
 if(row>=0 && row < rowCount && col>=0 && col < colCount)
 {
   board[row][col]= true;
 }
 
 else
 {
   return;
 }
}

boolean getCell(int row, int col)
{
  if(row>=0 && row < rowCount && col>=0 && col < colCount)
 {
   return board[row][col];
 }
 
 else
 {
   return false;
 }
  
}
int rowCount=100;;
int colCount=100;

float cellWidth;
float cellHeight;
boolean [][]board = new boolean[rowCount][colCount];


void draw()
{
  for(int i=0;i<height;i++)
  {
    for(int j=0;j<width;j++)
    {
      noFill();
      rect(i,j,cellHeight,cellWidth);
    }
  }
  
}