import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
public class RefreshCatListServlet extends HttpServlet 
{
	private static ArrayList availableCats = new ArrayList();
	protected void processRequest(HttpServletRequest request
	 , HttpServletResponse response)
	throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String cat = request.getParameter("cat");
		StringBuffer results = new StringBuffer("<subcats>");
		MakeCategory availableCategory=null;
		for(Iterator it = availableCats.iterator(); it.hasNext();) {
			availableCategory = (MakeCategory)it.next();
			if(availableCategory.cat.equals(cat)) {
				results.append("<subcat>");
				results.append(availableCategory.subcat);
				results.append("</subcat>");
			}
		}
	results.append("</subcats>");
	response.setContentType("text/xml");
	response.getWriter().write(results.toString());
	}
	protected void doGet(HttpServletRequest request,
	 HttpServletResponse response)
	throws ServletException, IOException {
		processRequest(request, response);
	}
	public void init() throws ServletException {
		availableCats.add(new MakeCategory("PL", "C"));
		availableCats.add(new MakeCategory("PL", "C++"));
		availableCats.add(new MakeCategory("PL", "Java"));
		availableCats.add(new MakeCategory("Furniture", "Table"));
		availableCats.add(new MakeCategory("Furniture", "Chair"));
		availableCats.add(new MakeCategory("Furniture", "Bed"));
		availableCats.add(new MakeCategory("Clothes", "Cotton"));
		availableCats.add(new MakeCategory("Clothes", "Nylon"));
		availableCats.add(new MakeCategory("Clothes", "Woolen"));
	}
	private static class MakeCategory {
		private String cat;
		private String subcat;
		public MakeCategory(String cat, String subcat) {
			this.cat = cat;
			this.subcat = subcat;
		}
	}
}
