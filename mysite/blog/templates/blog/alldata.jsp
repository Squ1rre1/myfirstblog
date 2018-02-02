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
<h3>관리자용 화면 (5초마다 자동갱신)</h3>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cc = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/aaa","root","q1w2e3!@#$");
%>
	1. 회원 리스트 <br>
	<table border="1">
		<tr>
			<td>아이디</td><td>비밀번호</td><td>나이</td><td>폰번호</td><td>직업</td><td>등록</td>
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
	2. 판매 내역
	<table border="1">
		<tr>
			<td>회원ID</td><td>품목</td><td>제품명</td><td>수량</td><td>판매일시</td>
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
	<a href = "menu.jsp">메뉴로 돌아가기</a>
	<%
	}catch(SQLException ex){
		out.println("전체 데이터 조회 중 오류 발생: "+ ex.getMessage());
	}
	%>
</body>
</html>