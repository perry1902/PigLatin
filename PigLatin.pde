public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	String s= sWord.substring(0,2);
	 if (s.equals("qu"))
     	return 2;
    else if (t.equals("a") || t.equals("e") || t.equals("i") || t.equals("o") || t.equals("u"))
    {
        return 0;
    }
    else if (sWord.contains("a") || sWord.contains("e") || sWord.contains("i") || sWord.contains("o") || sWord.contains("u"))
    {
    	return 1;
    }  
    else
		return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}                                                                                         
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) == 2)
	{
		String qu= sWord.substring(2,sWord.length());
		return qu + "quay";
	}
	else if (findFirstVowel(sWord)==1)
	{
		int constant =0;
		for (int i=0; i<sWord.length(); i++)
    	{
    		String z=sWord.substring(i,i+1);
    		if (z.equals("a") || z.equals("e") || z.equals("i") || z.equals("o") || z.equals("u"))
    		{
    			break;
    		}
    		constant++;
    	}
		return sWord.substring(constant,sWord.length()) + sWord.substring(0,constant) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
