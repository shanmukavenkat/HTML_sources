import java.io.*;
import java.lang.NumberFormatException;
import javax.servlet.*;
import javax.servlet.http.*;
public class ValidationServlet extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
	PrintWriter out = response.getWriter();
	boolean passed = validateInteger(request.getParameter("number"));
	response.setContentType("text/xml");
	response.setHeader("Cache-Control", "no-cache");
	String message = "You have entered an invalid number.";
	if (passed) {
		        message = "You have entered a valid number.";
	}
	out.println("<response>");
	out.println("<passed>" + Boolean.toString(passed) + "</passed>");
	out.println("<message>" + message + "</message>");
	out.println("</response>");
	out.close();
}
private boolean validateInteger(String number) {
	boolean isValid = true;
	if( number!= null) {
		try {
			Integer.parseInt(number);
		}
		catch(NumberFormatException e) {
			isValid = false;	
		}
	}
	else 
		isValid = false;
		return isValid;
	}
}
