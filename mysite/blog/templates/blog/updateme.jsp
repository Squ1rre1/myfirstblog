<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String phone = request.getParameter("phone");
	String job = request.getParameter("job");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc= DriverManager.getConnection
				("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
		PreparedStatement pp = cc.prepareStatement
				("update member_ set pw = ?, name = ?, age = ?, phone= ?, job = ? where id = ?");
		pp.setString(1,pw);
		pp.setString(2,name);
		pp.setString(3,age);
		pp.setString(4,phone);
		pp.setString(5,job);
		pp.setString(6,id);
		pp.executeUpdate();
	%>
	<script>
		alert("ȸ�� ������ ����Ǿ����ϴ�.");
		location.href="my_info.jsp";
	</script>
	<%
	}catch(SQLException ex){
		out.print("�˼��մϴ�. ȸ���� ���� Ȯ���� ������ �߻��߾��. �����ͷ� �����ּ���!! <p>�����޼���: "
				+ ex.getMessage());
	}
%>
</body>
</html>