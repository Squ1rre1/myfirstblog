<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection cc = DriverManager.getConnection
					("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
			PreparedStatement pp = cc.prepareStatement("select * from member_ where id = ? and pw = ? ");
			pp.setString(1,id);
			pp.setString(2,pw);
			ResultSet rr = pp.executeQuery();
			if(rr.next())
			{
				session.setAttribute("id",id);
				session.setMaxInactiveInterval(60*60);
				response.sendRedirect("menu.jsp");
			}
			else
			{
	%>
	<script>
		alert("미등록 아이디입니다~ 문의전화: 123-555-112");
		location.href="login.html";
	</script>
	<%
			
			}
			}catch(SQLException ex){
				out.println("오류발생: " + ex.getMessage());
			}
	%>
</body>
</html>