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
<h3>�����ڿ� ȭ�� (5�ʸ��� �ڵ�����)</h3>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
%>
	1. ȸ�� ����Ʈ <br>
	<table border="1">
		<tr>
			<td>���̵�</td><td>��й�ȣ</td><td>����</td><td>����ȣ</td><td>����</td><td>���</td>
		<tr>
	<%
		PreparedStatement pp = cc.prepareStatement("select * from member_");
		ResultSet rr = pp.executeQuery();
		while(rr.next()){%>
		<tr>
			<td><%=rr.getString("id") %></td><td><%=rr.getString("pw") %></td><td><%=rr.getString("name") %></td><td style="color:red; text-align:right"><%=rr.getString("age") %></td><td><%=rr.getString("phone") %></td><td><%=rr.getString("job") %></td><td><%=rr.getString("createdTime") %></td>
		</tr>	
			<%}
	%>
	
	</table>
	<p>
	2. �Ǹ� ����
	<table border="1">
		<tr>
			<td>ȸ��ID</td><td>ǰ��</td><td>��ǰ��</td><td>����</td><td>�Ǹ��Ͻ�</td>
		<tr>
	<%
		PreparedStatement p = cc.prepareStatement("select * from buy_");
		ResultSet r = p.executeQuery();
		while(r.next()){%>
		<tr>
			<td><%=r.getString("id") %></td><td><%=r.getString("category") %></td><td><%=r.getString("item") %></td><td style="color:red; text-align:right"><%=r.getString("num") %></td><td><%=r.getString("buytime") %></td>
		</tr>	
			<%}
	%>
	</table>
	<p>
	<a href = "menu.jsp">�޴��� ���ư���</a>
	<%
	}catch(SQLException ex){
		out.println("��ü ������ ��ȸ �� ���� �߻�: "+ ex.getMessage());
	}
	%>
</body>
</html>