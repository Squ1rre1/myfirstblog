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
	String id = (String)session.getAttribute("id");
	String[] car= (String[])session.getAttribute("car");
	String bread = (String)session.getAttribute("bread");
	String breadnum = (String)session.getAttribute("breadnum");
	String tea=(String)session.getAttribute("tea");
	String teanum=(String)session.getAttribute("teanum");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc = DriverManager.getConnection("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
		PreparedStatement pp;
		if(car!=null){
			for(String c:car){
				pp=cc.prepareStatement("insert into buy_ values(?,'car',?,1,sysdate())");
				pp.setString(1,id);
				pp.setString(2,c);
				pp.executeUpdate();
			}
			session.removeAttribute("car");
		}
		if(bread!=null){
			pp = cc.prepareStatement("insert into buy_ values(?,'bread',?,?,sysdate())");
			pp.setString(1,id);
			pp.setString(2,bread);
			pp.setString(3,breadnum);
			pp.executeUpdate();
			session.removeAttribute("bread");
		}	
		if(tea!=null){
			pp = cc.prepareStatement("insert into buy_ values(?,'tea',?,?,sysdate())");
			pp.setString(1,id);
			pp.setString(2,tea);
			pp.setString(3,teanum);
			pp.executeUpdate();
			session.removeAttribute("tea");
		}
		%>
	<body style="background-color:#F8E0F7">
	<h4>���ſϷ�Ǿ����ϴ�. <span style="color:blue"><%=id %></span>��, �����մϴ�!</h4><p>
	<a href="menu.jsp"><b>���ΰ��</b></a> &nbsp;&nbsp;&nbsp; <a href="logout.jsp">�α׾ƿ�</a>
	<%
	}catch(SQLException ex){
		out.print("�˼��մϴ�. ���� ó�� �� ������ �߻��߾��. �����ͷ� �����ּ���!! <p>�����޼��� :"+ ex.getMessage());
	}
%>
</body>
</html>