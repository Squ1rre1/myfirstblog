<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
session.setAttribute("bread", request.getParameter("bread"));
session.setAttribute("breadnum", request.getParameter("breadnum"));
session.setAttribute("tea", request.getParameter("tea"));
session.setAttribute("teanum", request.getParameter("teanum"));
response.sendRedirect("basket.jsp");

%>
</body>
</html>