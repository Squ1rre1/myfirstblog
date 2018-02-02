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
			<h3><%=id %>님의 회원 정보</h3>
			<form method ="post" action="updateme.jsp"><p>
				PW &nbsp;: <input type="password" name="pw" value="<%=rr.getString("pw") %>"/><p>
				이름 : <input type="text" name="name" value="<%=rr.getString("id") %>"/><p>
				나이 : <input type="text" name="age" value="<%=rr.getString("age") %>"/><p>
				폰 &nbsp;&nbsp;:<input type="text" name="phone" value="<%=rr.getString("phone") %>"/><p>
				직업 : <input type="text" name = "job" value="<%=rr.getString("job") %>"/><p>
				<a href="menu.jsp">메뉴로 가기</a> &nbsp;&nbsp; <input type="submit" value="회원 정보 변경">
			</form>
		<%}else{ session.invalidate();%>
		<script>
			alert("회원정보를 읽을 수 없습니다. 다시 시도해 주세요. (로그인 화면으로 이동)");
			location.href="login.jsp";
		</script>
	<%}
	}catch(SQLException ex){
		out.print("죄송합니다. 회원님 정보 확인 중 문제가 발생했어요. 고객센터로 연락주세요!! <p>오류메세지: "+
	ex.getMessage());
	}

%>

</body>
</html>