package service;
import javax.jws.*;
import javax.xml.ws.Endpoint;
@WebService
public class MyService
{
	@WebMethod
	public int sum(int a, int b) 
	{
		return a+b;
	}
	@WebMethod
	public String message() 
	{
		return "Hello From Web Service!";
	}
	public static void main(String[] args)
	{
	//Creating and Publishing Web Service.
	MyService serv = new MyService();
Endpoint endpoint = Endpoint.publish("http://localhost:8081/myservice", serv);        
	}
}
