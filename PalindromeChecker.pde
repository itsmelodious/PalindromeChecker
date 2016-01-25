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
  String temp = new String();
  for (int i = word.length() - 1; i >= 0 ; i--)
  {
    temp += word.charAt(i);
  }
  if (word.equals(temp))
    return true;
  
  // String space = new String();
  // String bSpace = new String();
  // for (int j = 0; j < word.length(); j++)
  // {
  //   if (word.charAt(j) != ' ')
  //     space += word.charAt(j);
  // }
  // for (int k = word.length() - 1; k >= 0; k--)
  // {
  //   if (word.charAt(k) != ' ')
  //     bSpace += word.charAt(k);
  // }
  // if (space.equals(bSpace))
  //   return true;
  String character = new String();
  String bChar = new String();
  for (int j = 0; j < word.length(); j++)
  {
    if (Character.isLetter(word.charAt(j)))
      character += word.charAt(j);
  }
  for (int k = word.length()-1; k >= 0; k--)
  {
    if (Character.isLetter(word.charAt(k)))
      bChar += word.charAt(k);
  }
  if (character.equals(bChar))
    return true;

  return false;
}

