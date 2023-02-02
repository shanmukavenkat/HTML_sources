package com.kogent.ajax.servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kogent.ajax.DatabaseConnector;
import com.kogent.ajax.RicoUtil;

public class RicoUserPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String responseString = null;
		String type = req.getParameter("type");
		if(type==null)
			type = "0";
		String userid = req.getParameter("id");
		if (userid != null) {
			HashMap userpass = retrieveUserPassword(userid);
			if (userpass==null || userpass.size()==0){
				userpass = new HashMap();
				userpass.put("userDiv"," ");
				userpass.put("passDiv"," ");
				type = "1";
			}
			if (type.equals("1")){
				String message = "User Id: "+userid+" is not in the database. Please enter your Username and Password";
responseString = RicoUtil.buildRicoXML(userpass,"<input>",message);
			}
			else
				responseString = RicoUtil.buildRicoXML(userpass,"");		
		}
		if (responseString != null) {
			System.out.println(responseString);
			res.setContentType("text/xml");
			res.setHeader("Cache-Control", "no-cache");
			res.getWriter().write(responseString);
		} else {
			
			res.setContentType("text/xml");
			res.setHeader("Cache-Control", "no-cache");
			res.getWriter().write("?");
		}
	}

	private HashMap retrieveUserPassword(String userid) {
		Connection con = DatabaseConnector.getConnection();
		HashMap userPassMap = new HashMap();
		String queryString = "";
		try {
queryString = "SELECT username, password FROM userpassword where id="+userid;
			Statement select = con.createStatement();
			ResultSet result = select.executeQuery(queryString);

			while (result.next()) { // process results one row at a time
				String username;
				String password;

				username = result.getString("username");
				if (result.wasNull()) {
					username = "";
				}
				userPassMap.put("userDiv", username);
				password = result.getString("password");
				if (result.wasNull()) {
					password = "";
				}
				userPassMap.put("passDiv", password);
			}
		} catch (Exception e) {
System.out.println("exception caught getting Username/Password:"
					+ queryString + " " + e.getMessage());
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
				}
			}
		}
		return userPassMap;
	}
}
