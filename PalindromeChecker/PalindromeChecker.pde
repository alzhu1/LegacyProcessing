public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String noSpace = new String();
  for(int i=0; i<word.length(); i++)
  {
    String letr = word.substring(i,i+1);
    if(!letr.equals(" ") && !letr.equals("!") && !letr.equals(",") && !letr.equals("'"))
    {
      noSpace = noSpace + word.substring(i,i+1);
    }
  }
  String sameCase = noSpace.toLowerCase();
  String reversal = new String();
  int letCount = sameCase.length()-1;
  for(int j=letCount; j>=0; j--)
  {
    reversal=reversal+sameCase.substring(j,j+1);
  }
  if(sameCase.equals(reversal))
  {
    return true;
  }
    return false;
}

