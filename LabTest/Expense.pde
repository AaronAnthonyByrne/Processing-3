class Expense
{
  String name;
  String party;
  String constituency;
  float returned;
  float claimed;
  color c;
  
  Expense(String lines)
  {
   
  }
  
  
  Expense(String name,String con,String party, float returned, float claimed)
  {
    this.name=name;
    this.constituency = con;
    this.party = party;
    this.returned=returned;
    this.claimed=claimed;
    c = color(random(0,255),random(0,255),random(0,255));
  }
    String toString()
    {
      return name+"\t"+party+"\t"+constituency+"\t"+claimed+"\t"+returned;
   }

}