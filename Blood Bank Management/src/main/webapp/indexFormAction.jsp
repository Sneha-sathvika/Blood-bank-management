<%@page import ="Project.ConnectionProvider "%>
<%@page import ="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobileno=request.getParameter("mobileno");
String email= request.getParameter("email");
String bloodgrp = request.getParameter("bloodgrp");
String status="pending";
try{
	Connection con= ConnectionProvider.getCon();
			PreparedStatement ps  = con.prepareStatement("Insert into bloodrequest values(?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,mobileno);
			ps.setString(3,email);
			ps.setString(4,bloodgrp);
			ps.setString(5,status);
			ps.executeUpdate();
			response.sendRedirect("index.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("index.jsp?msg=invalid");
}
%>

