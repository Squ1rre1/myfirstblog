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
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
		PreparedStatement pp = cc.prepareStatement
				("select * from member_ where id = ?");
		pp.setString(1,id);
		ResultSet rr = pp.executeQuery();
		if(rr.next())
		{
			%>
			<h3><%=id %>���� ȸ�� ����</h3>
			<form method ="post" action="updateme.jsp"><p>
				PW &nbsp;: <input type="password" name="pw" value="<%=rr.getString("pw") %>"/><p>
				�̸� : <input type="text" name="name" value="<%=rr.getString("id") %>"/><p>
				���� : <input type="text" name="age" value="<%=rr.getString("age") %>"/><p>
				�� &nbsp;&nbsp;:<input type="text" name="phone" value="<%=rr.getString("phone") %>"/><p>
				���� : <input type="text" name = "job" value="<%=rr.getString("job") %>"/><p>
				<a href="menu.jsp">�޴��� ����</a> &nbsp;&nbsp; <input type="submit" value="ȸ�� ���� ����">
			</form>
		<%}else{ session.invalidate();%>
		<script>
			alert("ȸ�������� ���� �� �����ϴ�. �ٽ� �õ��� �ּ���. (�α��� ȭ������ �̵�)");
			location.href="login.jsp";
		</script>
	<%}
	}catch(SQLException ex){
		out.print("�˼��մϴ�. ȸ���� ���� Ȯ�� �� ������ �߻��߾��. �����ͷ� �����ּ���!! <p>�����޼���: "+
	ex.getMessage());
	}

%>

</body>
</html>