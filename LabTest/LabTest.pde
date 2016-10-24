void setup()
{
  size(500,500);
  loadData();
  printAll();
}

ArrayList<Expense>expenses= new ArrayList<Expense>();
Table table;
void printAll()
{
  for(Expense e: expenses)
  {
    println(e);
    
  }
}


void loadData() 
{
  table=loadTable("data.txt", "tsv"); // Load each line into a String array
  
    for(int row=0; row<table.getRowCount();row++)
    {
      Expense e = new Expense(table.getString(row,0), table.getString(row,1),table.getString(row,2),table.getFloat(row,3),table.getFloat(row,4));
    
      expenses.add(e);
    }
      
}
void draw()
{
}