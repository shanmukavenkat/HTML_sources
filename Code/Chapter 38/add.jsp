<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%
try {
	client.MyServiceService service = new client.MyServiceService();
	client.MyService port = service.getMyServicePort();
	int a = Integer.parseInt(request.getParameter("a"));
	int b = Integer.parseInt(request.getParameter("b"));
	int result = port.sum(a, b);
	out.println(result);
	} 
	catch (Exception ex1) {
	}
%>
