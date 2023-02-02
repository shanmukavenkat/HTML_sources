<%@page contentType="text/plain"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!protected String getCustomerData(int id){
	try { 
		Connection con = com.kogent.ajax.DatabaseConnector.getConnection();
		System.out.println("Accessing all Customers with ID = : " +id); 
		String sql1 = "Select * from Customer where CUSTOMERID="+id;
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql1);
		boolean found = rs.next();
		StringBuffer buffer = new StringBuffer();
		System.out.println("Query Executed : " +sql1); 
		if (found) {
			buffer.append(rs.getString("Name"));
			buffer.append("<br />");
			buffer.append(rs.getString("Address")); 
			buffer.append("<br />"); 
			buffer.append(rs.getString("City")); 
			buffer.append("<br />"); 
			buffer.append(rs.getString("State")); 
			buffer.append("<br />"); 
			buffer.append(rs.getString("pin")); 
			buffer.append("<br /><br />"); 
			buffer.append("Phone: " + rs.getString("Phone")); 
			buffer.append("<br /><a href=\"mailto:"); 
			buffer.append(rs.getString("Email")); 
			buffer.append("\">"); 
		} else {
			buffer.append("Customer with ID ");
			buffer.append(id);
			buffer.append(" could not be found.");
		}
		rs.close();
		con.close();
		System.out.println("Resulted String : " +buffer.toString());
		return buffer.toString();
	} catch (Exception ex){
		System.out.println("Error Comes Terminated : " +ex);
		return "Error in Getting Customers Info";
	}
}%>
<%
String id = request.getParameter("id");
String callback = request.getParameter("callback");
String message = "";
int customerId = -1;
try {
	customerId = Integer.parseInt(id);
	System.out.println("You Entered: " +customerId);
	message = getCustomerData(customerId);
} catch (Exception ex) {
	message = "Invalid customer ID.";
}
%>
<%=message%>
