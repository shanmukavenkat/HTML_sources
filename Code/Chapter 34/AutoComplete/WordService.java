import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
public class WordService 
{
	private List words;
	/** Creates a new instance of WordService */
	private WordService(List list_of_words) 
	{
		this.words = list_of_words;
	}
	public static WordService getInstance(List list_of_words) 
	{
		return new WordService(list_of_words);
	}
	public List findWords(String prefix) 
	{
		String prefix_upper = prefix.toUpperCase();
		List matches = new ArrayList();
		Iterator iter = words.iterator();
		while(iter.hasNext()) {
			String word = (String) iter.next();
			String word_upper_case = word.toUpperCase();
			if(word_upper_case.startsWith(prefix_upper))
			{
				boolean result = matches.add(word);
			}
		}
		return matches;
	}
}
