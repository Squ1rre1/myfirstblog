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
	request.setCharacterEncoding("euc-kr");
	String id = (String)session.getAttribute("id");
%>
<body style="background-color:#F5EFFB">
<div align="center">
<h3><span style="color:blue"><%=id %></span>���� �ŷ� ����</h3>
<table border="1">
<tr> <th>ǰ��</th><th>��ǰ��</th><th>����</th><th>�ŷ��Ͻ�</th></tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cc = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
	PreparedStatement pp = cc.prepareStatement("select * from buy_ where id = ? order by buytime");
	pp.setString(1,id);
	ResultSet rr = pp.executeQuery();
	while(rr.next()){%>
		<tr> 
			<td><%=rr.getString("category") %></td><td><%=rr.getString("item") %></td><td><%=rr.getString("num") %></td><td><%=rr.getString("buytime") %></td>
		</tr>
	<%}
	}catch(SQLException ex){
		out.print("�˼��մϴ�. ���� ���� ���� ��ȸ �� ������ �߻��߾��. �����ͷ� �����ּ���!! <p>�����޼���" + ex.getMessage());
	}
	%>
</table><p>
<a href = "menu.jsp">�޴��� ���ư���</a>

</div>
</body>
