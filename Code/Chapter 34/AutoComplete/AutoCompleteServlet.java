import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
public class AutoCompleteServlet extends HttpServlet {
private List words = new ArrayList();
public void init(ServletConfig config) throws ServletException {
	words.add("Aback");
	words.add("Able");
	words.add("Abstract");
	words.add("Abuse");
	words.add("Abyss");
	words.add("parse");
	words.add("palm");
	words.add("park");
	words.add("param");
}
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
	String prefix = request.getParameter("words");
	WordService service = WordService.getInstance(words);
	List matching = service.findWords(prefix);
	if (matching.size() > 0) {
		PrintWriter out = response.getWriter();
		response.setContentType("text/xml");
		response.setHeader("Cache-Control", "no-cache");
		out.println("<response>");
		Iterator iter = matching.iterator();
		while(iter.hasNext()) {
			String word = (String) iter.next();
			out.println("<word>" + word + "</word>");
		}
		out.println("</response>");
		matching = null;
		service = null;
		out.close();
	} else 
	{
		response.setStatus(HttpServletResponse.SC_NO_CONTENT);
	}
}
}
