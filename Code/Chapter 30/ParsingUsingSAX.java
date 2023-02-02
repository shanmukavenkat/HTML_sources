import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.*;
import org.xml.sax.*;
import org.xml.sax.helpers.DefaultHandler;

public class ParsingUsingSAX extends DefaultHandler
{
	List myEmpls;	
	private String tempVal;		
	private Employee tempEmp;	
	public ParsingUsingSAX(){
		myEmpls = new ArrayList();
	}
	
	public void runExample() 
	{
		parseDocument();
		printData();
	}

	private void parseDocument() 
	{		
		SAXParserFactory spf = SAXParserFactory.newInstance();
		try {	
			SAXParser sp = spf.newSAXParser();			
			sp.parse("employees.xml", this);			
		}catch(SAXException se) {
			se.printStackTrace();
		}catch(ParserConfigurationException pce) {
			pce.printStackTrace();
		}catch (IOException ie) {
			ie.printStackTrace();
		}
	}
	
	private void printData()
	{
		System.out.println("No of Employees '" + myEmpls.size() + "'.");
		Iterator it = myEmpls.iterator();
		while(it.hasNext()) 

 		{
			System.out.println(it.next().toString());
		}
	}		
	public void startElement(String uri, String localName, String qName, 			Attributes attributes) throws SAXException {
		tempVal = "";
		if(qName.equalsIgnoreCase("Employee")) 
 		{			
			tempEmp = new Employee();
			tempEmp.setType(attributes.getValue("type"));
		}
	}
	
	public void characters(char[] ch, int start, int length) throws 				SAXException {
		tempVal = new String(ch,start,length);
	}	
	public void endElement(String uri, String localName, String qName) throws 			SAXException {
		if(qName.equalsIgnoreCase("Employee")) {			
			myEmpls.add(tempEmp);
		}else if (qName.equalsIgnoreCase("Name")) {
			tempEmp.setName(tempVal);
		}else if (qName.equalsIgnoreCase("Id")) {
			tempEmp.setId(Integer.parseInt(tempVal));
		}else if (qName.equalsIgnoreCase("Age")) {
			tempEmp.setAge(Integer.parseInt(tempVal));
		}		
	}	
	public static void main(String[] args){
		ParsingUsingSAX spe = new ParsingUsingSAX();
		spe.runExample();
	}
}
