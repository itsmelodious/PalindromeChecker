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
  for(int i = 0; i < word.length(); i++)
    for(int j = word.length()-1; j >= 0; j--)
      if(word.charAt(i) == word.charAt(j))
        return true;
  return false;
}

