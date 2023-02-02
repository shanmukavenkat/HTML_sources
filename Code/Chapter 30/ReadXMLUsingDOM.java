import javax.xml.parsers.*;
import org.w3c.dom.*;
import java.io.*;
 
public class ReadXMLUsingDOM {
 
public static void main(String[] argv)throws IOException {

   BufferedReader bf = new BufferedReader(new
   InputStreamReader(System.in));
   System.out.print("Enter XML File Name: ");
   String xmlFile = bf.readLine();
   File file = new File(xmlFile);
   if(file.exists()){
 try {
    DocumentBuilderFactory dbFactory =  
DocumentBuilderFactory.newInstance();
    DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
    Document doc = dBuilder.parse(file);
    doc.getDocumentElement().normalize();
 
    System.out.println("Root element :" + doc.getDocumentElement 
().getNodeName());
    NodeList nList = doc.getElementsByTagName("Employee");
    System.out.println("-----------------------");
 
    for (int temp = 0; temp < nList.getLength(); temp++) {
 
       Node nNode = nList.item(temp);	    
       if (nNode.getNodeType() == Node.ELEMENT_NODE) {
 
          Element eElement = (Element) nNode;
 
          System.out.println("Employee Name : "  + getTagValue 
("Name",eElement));
          System.out.println("Employee ID : "  + getTagValue 
("Id",eElement));
          System.out.println("Employee Age : "  + getTagValue 
("Age",eElement));
    System.out.println("-----------------------");
        }
    }
  } catch (Exception e) {
    e.printStackTrace();
  }
}
else{
	System.out.print("File not found!");
    }
 }
 
 private static String getTagValue(String sTag, Element eElement){
    NodeList nlList= eElement.getElementsByTagName(sTag).item 
(0).getChildNodes();
    Node nValue = (Node) nlList.item(0); 
 
    return nValue.getNodeValue();    
 }
 
}
