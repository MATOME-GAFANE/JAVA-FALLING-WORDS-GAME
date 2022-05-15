

public class WordDictionary {
	int size;
	static String [] theDict= {"sit",
"observer",
"labour",
"lace",
"mouth",
"unlikely",
"joint",
"splurge",
"cope",
"read",
"key",
"astonishing",
"consumption",
"shower",
"nerve",
"assume",
"veteran",
"heroin",
"ground",
"infect",
"tape",
"level",
"injury",
"date",
"split",
"skin",
"blame",
"exhibition",
"water",
"bitter"}; //default dictionary
	
	WordDictionary(String [] tmp) {
		size = tmp.length;
		theDict = new String[size];
		for (int i=0;i<size;i++) {
			theDict[i] = tmp[i];
		}
		
	}
	
	WordDictionary() {
		size=theDict.length;
		
	}
	
	public synchronized String getNewWord() {
		int wdPos= (int)(Math.random() * size);
		return theDict[wdPos];
	}
	
}
