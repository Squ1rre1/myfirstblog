<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String)session.getAttribute("id");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
		PreparedStatement pp = cc.prepareStatement("select * from visit_");
		ResultSet rr = pp.executeQuery();
		if(rr.next()){
			out.println("로그인 누적 수 : " + rr.getString("cnt") +"<p>");
		}
	}catch(SQLException ex){
		out.println("로그인 누적 수 관련 서비스 점검중입니다~ :" + ex.getMessage());
	}
%>
<body bgcolor="yellow">
<div align="center">
<h1>Lavigne's Shopping Mall</h1>
(car, bread, tea) <p>
	<form method="post" action = "check_id.jsp">
		ID: <input type="text" name="id"><p>
		PW: <input type="password" name="pw"><p>
		<a href="register.html">회원가입</a>
		<input type="submit" value="login">
		
	</form>
	<img src="avril lavigne.jpg" height = "300" width = "500" alt="avril lavigne">
</div>

</body>
</html>