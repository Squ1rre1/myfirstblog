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
		alert("����ó�� �Ǿ����ϴ�. ���߿� �Ǹ�����~");
		location.href = "login.jsp";
	</script>
	<%
		}catch(SQLException ex){
			out.print("ȸ�� Ż�� ó�� �� ������ �߻��߽��ϴ�. �����ͷ� �����ּ���!");
			ex.getMessage();
		}
	%>
</body>
</html>