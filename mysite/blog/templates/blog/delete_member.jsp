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
	<%
		request.setCharacterEncoding("euc-kr");
		String id = (String)session.getAttribute("id");
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
		PreparedStatement pp = 
				cc.prepareStatement("delete from member_ where id=?");
		pp.setString(1,id);
		pp.executeUpdate();
		session.invalidate();
	%>
	<script>
		alert("정상처리 되었습니다. 나중에 또만나요~");
		location.href = "login.jsp";
	</script>
	<%
		}catch(SQLException ex){
			out.print("회원 탈퇴 처리 중 문제가 발생했습니다. 고객센터로 연락주세요!");
			ex.getMessage();
		}
	%>
</body>
</html>