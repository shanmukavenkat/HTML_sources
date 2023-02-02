import java.io.*;
import org.w3c.dom.*;
import org.xml.sax.*;
import javax.xml.parsers.*;
import javax.xml.transform.*; 
import javax.xml.transform.dom.*; 
import javax.xml.transform.stream.*;
public class ParsingUsingJAXP{
static public void main(String[] arg)throws
IOException,SAXException,TransformerException {
		BufferedReader bf = new BufferedReader(new
		InputStreamReader(System.in));
		System.out.print("Enter XML File Name: ");
		String xmlFile = bf.readLine();
		File file = new File(xmlFile);
		if(file.exists()){			
try {
DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();	
DocumentBuilder builder = factory.newDocumentBuilder();	
Document doc = builder.parse(xmlFile); 
TransformerFactory tranFact = TransformerFactory.newInstance(); 
Transformer transfor = tranFact.newTransformer(); 
Node node =doc.getDocumentElement();
Source src = new DOMSource(node); 
Result dest = new StreamResult(new File("ConvertedXML.doc"));
transfor.transform(src, dest);
System.out.println("File successfully created!");
}
catch (ParserConfigurationException e) {
	System.err.println(e);
	System.exit(1);
	}
}
else{
	System.out.print("File not found!");
    }
}
}
