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
<h3> 장바구니 품목 리스트 </h3>
<ul>

	<%
		if(car ==null && tea == null&&bread==null)
		{
		%>
		
			<strong><font color="blue"><%=id%></font>님의 장바구니가 비어있습니다</strong> <p>
		<%
		}else
		{%>
			<font color="blue"><%=id%></font>님께서 선택하신 품목들은 다음과 같습니다 <p>
		<%}
		
		if(car != null){
			for(int i=0;i<car.length;i++)
				{%>
					<li><%=car[i]%> <br>			
				<%}
			}
		
		if(bread != null){%>
			<li><%=bread %> <%=breadnum %> 개 <br>		
			<%
		}
			
		if(tea != null){
			%>
			<li><%=tea %> <%=teanum %> 잔 <br>	
			<%
		}
		
	%>

</ul> <p>
<%
if(car ==null && tea == null&&bread==null)
{
%>
<a href="menu.jsp">쇼핑계속</a> &nbsp;&nbsp;&nbsp;
<a href="logout.jsp">로그아웃</a> &nbsp;&nbsp;&nbsp;
<%} else
{%>
<a href="menu.jsp">쇼핑계속</a> &nbsp;&nbsp;&nbsp;
<a href="buy.jsp"><b>구매하기</b></a> &nbsp;&nbsp;&nbsp;
<%} %>

</html>