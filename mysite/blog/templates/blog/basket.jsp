<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<%
request.setCharacterEncoding("euc-kr");
String id= (String)session.getAttribute("id");
String car[] = (String[])session.getAttribute("car");

String bread= (String)session.getAttribute("bread");
String breadnum= (String)session.getAttribute("breadnum");
String tea= (String)session.getAttribute("tea");
String teanum= (String)session.getAttribute("teanum");
%>
<body bgcolor="F1F8E0">
<h3> ��ٱ��� ǰ�� ����Ʈ </h3>
<ul>

	<%
		if(car ==null && tea == null&&bread==null)
		{
		%>
		
			<strong><font color="blue"><%=id%></font>���� ��ٱ��ϰ� ����ֽ��ϴ�</strong> <p>
		<%
		}else
		{%>
			<font color="blue"><%=id%></font>�Բ��� �����Ͻ� ǰ����� ������ �����ϴ� <p>
		<%}
		
		if(car != null){
			for(int i=0;i<car.length;i++)
				{%>
					<li><%=car[i]%> <br>			
				<%}
			}
		
		if(bread != null){%>
			<li><%=bread %> <%=breadnum %> �� <br>		
			<%
		}
			
		if(tea != null){
			%>
			<li><%=tea %> <%=teanum %> �� <br>	
			<%
		}
		
	%>

</ul> <p>
<%
if(car ==null && tea == null&&bread==null)
{
%>
<a href="menu.jsp">���ΰ��</a> &nbsp;&nbsp;&nbsp;
<a href="logout.jsp">�α׾ƿ�</a> &nbsp;&nbsp;&nbsp;
<%} else
{%>
<a href="menu.jsp">���ΰ��</a> &nbsp;&nbsp;&nbsp;
<a href="buy.jsp"><b>�����ϱ�</b></a> &nbsp;&nbsp;&nbsp;
<%} %>

</html>