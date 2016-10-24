void setup()
{
  frameRate(60);
  size(700, 700);
  cellWidth = width / (float)colCount;
  cellHeight = height / (float)rowCount;
  
  //set every cell to be dead
  for (int i = 0; i < rowCount; i++)
  {
    for(int j = 0; j < colCount; j++)
    {
      setBoard(i,j,false);
    }
   }
  
  //toggle a load of cells as alive
  for(int i = 0; i < 10000; i++)
  {
    toggle((int)random(0,rowCount), (int)random(0,colCount), true);
  }
}
void toggle(int row, int col, boolean alive)
{
  if (row >= 0 && col >= 0 && row < rowCount && col < colCount)
  {
    board[row][col] = true;
  }
}

int count = 0;
int rowCount = 200;
int colCount = 200;
float cellWidth;
float cellHeight;
boolean[][] board = new boolean [rowCount][colCount];
int[][] neighbourCount  = new int [rowCount][colCount];
void draw()
{
  updateBoard();
}
void updateBoard()
{
  background(0);
  noStroke();
  float x = 0;
  float y = 0;
  
  
  for (int i = 0; i < rowCount; i++)
  {
    for(int j = 0; j < colCount; j++)
    {
      checkCells(i,j);
    }
  }
  
  for (int i = 0; i < rowCount; i++)
  {
    for(int j = 0; j < colCount; j++)
    {
      updateCells(i,j);
      if (board[i][j] == true)
      {
        fill(0,255,0);
        rect (x, y, cellWidth, cellHeight);
      }
      else
      {
        fill(0);
        rect (x, y, cellWidth, cellHeight);
      }
      x += cellWidth;
    }
    x = 0;
    y += cellHeight;
  }
}
void setBoard(int row, int col, boolean alive)
{
  if (row >= 0 && col >= 0 && row < rowCount && col < colCount)
  {
    board[row][col] = false;
  }
}
void updateCells(int i, int j)
{
  if (neighbourCount[i][j] <= 1)
  {
    board[i][j] = false;
  }
  else if (neighbourCount[i][j] >= 4)
  {
    board[i][j] = false;
  }
  else if ((neighbourCount[i][j] == 2 || neighbourCount[i][j] == 3) && board[i][j] == true)
  {
    board[i][j] = true;
  }
  else if (neighbourCount[i][j] == 3 && board[i][j] == false)
  {
    board[i][j] = true;
  }
}
int cellCount(int i, int j)
{
  count = 0;  
  
  //top left corner
  if (i == 0 && j == 0)
  {
    getCell(i, j+1);
    getCell(i+1, j);
    getCell(i+1, j+1);
  }
  //top row
  else if (i == 0 && j < rowCount-1)
  {
    getCell(i, j-1);
    getCell(i, j+1);
    getCell(i+1, j-1);
    getCell(i+1, j);
    getCell(i+1, j+1);
  }
  //most left column
  else if (j == 0 && i < colCount-1)
  {
    getCell(i, j+1);
    getCell(i-1, j);
    getCell(i+1, j);
    getCell(i+1, j+1);
    getCell(i-1, j+1);
  }
  //bottom left corner
  else if ( i == colCount-1 && j == 0)
  {
    getCell(i-1, j);
    getCell(i-1, j+1);
    getCell(i, j+1);
  }
  //most bottom row
  else if (i == colCount-1 && j < rowCount-1)
  {
    getCell(i, j-1);
    getCell(i, j+1);
    getCell(i-1, j);
    getCell(i-1, j+1);
    getCell(i-1, j-1);
  }
  
  //bottom right corner
  else if (i == colCount-1 && j == rowCount-1)
  {
    getCell(i-1, j-1);
    getCell(i-1, j);
    getCell(i, j-1);
  }
 //most right column
 else if (j == rowCount-1 && i > 0)
 {
   getCell(i-1, j);
   getCell(i+1, j);
   getCell(i, j-1);
   getCell(i+1, j-1);
   getCell(i-1, j-1);
 }
 //top right corner
 else if (i == 0 && j == rowCount-1)
 {
   getCell(i, j-1);
   getCell(i+1, j);
   getCell(i+1, j-1);
 }
 //any other cell
 else
 {
   getCell(i, j-1);
   getCell(i, j+1);
   getCell(i-1, j-1);
   getCell(i-1, j);
   getCell(i+1, j+1);
   getCell(i+1, j);
   getCell(i+1, j-1);  
   getCell(i-1, j+1);
 }
 
 return count;
}
void checkCells(int i, int j)
{
    int count = cellCount(i,j);
    neighbourCount[i][j] = count; 
}
void getCell(int i, int j)
{
  if(board[i][j] == true)
  {
    count++;
  }
}