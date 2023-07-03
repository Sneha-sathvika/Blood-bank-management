<%@page import="Project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
String mobileno= request.getParameter("mobileno");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from bloodrequest where mobileno='"+mobileno+"'");
	
	response.sendRedirect("requestForBlood.jsp");
}catch(Exception e){
	response.sendRedirect("requestForBlood.jsp");

}

%>