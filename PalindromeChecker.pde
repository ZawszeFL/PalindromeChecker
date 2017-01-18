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
    if(Vanilla(reverse(word)).equals(Vanilla(word)))
    {
      return true;
    }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int nLast=str.length()-1;
    for(int nI=nLast;nI>=0; nI--)
      {
        {
          sNew=sNew+str.substring(nI,nI+1);
        }


      }
    return sNew.toLowerCase();
}

public String Vanilla(String wrd)
{
  String wNew = new String();
  for(int i=0; i<wrd.length(); i++)
  {
    if(Character.isLetter(wrd.charAt(i))==true)
    {
      wNew=wNew+wrd.charAt(i);
    }

  }
  return wNew.toLowerCase();
}

