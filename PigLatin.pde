import java.util.*;
public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	String a = new String("");
	for(int i=0;i<sWord.length();i++)
	{
		a = sWord.substring(i,i+1);
			if(a.equals("u") && sWord.substring(i-1,i).equals("q") == true)
				return i;
    		else if(a.equals("a")||a.equals("e")||a.equals("i")||a.equals("o"))
				return i;
		noLoop();
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{	
	String b= new String("");
	if(findFirstVowel(sWord) == 0)
		return b + sWord.substring(0) + "way";
	else if(findFirstVowel(sWord) == -1)
		return sWord + "ay";
	else if(sWord.substring(findFirstVowel(sWord),findFirstVowel(sWord)+1).equals("u") || sWord.substring(findFirstVowel(sWord)-1,findFirstVowel(sWord)).equals("q"))
		return b + sWord.substring(findFirstVowel(sWord)+1)+sWord.substring(0,findFirstVowel(sWord)+1)+"ay";
	else if (findFirstVowel(sWord) == 1)
		return b + sWord.substring(1)+sWord.substring(0,1) + "ay";
	else if(findFirstVowel(sWord) > 0)
	{
		return b + sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
