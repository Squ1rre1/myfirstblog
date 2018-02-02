<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String phone = request.getParameter("phone");
	String job = request.getParameter("job");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
		PreparedStatement pp =
				cc.prepareStatement("insert into member_ values (?,?,?,?,?,?,sysdate())");
				pp.setString(1,id);
				pp.setString(2,pw);
				pp.setString(3,name);
				pp.setString(4,age);
				pp.setString(5,phone);
				pp.setString(6,job);
				pp.executeUpdate();
%>
	<script>
		alert("가입되셨습니다. 환영합니다~");
		location.href = "login.jsp";
	</script>
<%
}catch(SQLException ex){
		out.println("회원님, 죄송하지만 오류가 발생했어요: "+ex.getMessage());
	}
%>