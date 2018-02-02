<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="#F1F8E0">
<%
	request.setCharacterEncoding("euc-kr");
	String id= (String)session.getAttribute("id");
%>
<h1>MENU</h1>
<hr>
<font color="blue"><%=id %></font>님, 오늘도 즐겁게 쇼핑하세요!
<hr><p>

<ol>
	<li><a href = "car.jsp">car</a>
	<li><a href = "breadtea.jsp">bread and tea</a>
	<li><a href = "basket.jsp">장바구니 바로가기</a>
	<li><a href = "mylist.jsp">my purchased list</a>
	<li><a href = "login.html">back to Home_page</a>
	<li><a href = "my_info.jsp">My_information</a>
	<li><a href = "secession.jsp">secession</a>
	<li><a href = "logout.jsp">logout</a>

<%
	if(id !=null){
		if(id.equals("manager")){%>
		<li><a href = "alldata.jsp">회원 리스트 (관리자용)</a>
	<% 	}
	}
%>

</ol>

</body >

</html>