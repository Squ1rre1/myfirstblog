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
		String id = (String)session.getAttribute("id");
	%>
<body bgcolor="CECEF6">
	
	<h4><font color="blue"><%=id %></font>님, 어떤 차를 원하세요?</h4>
	<form method="post" action="save_car.jsp">
	<table border="1">
		<tr>
			<td><input type="checkbox" name="car" value="람보르기니">
				와 람보르기니 무르시엘라고 만져봤다</td>
			<td><img src="lambo.jpg" width=130 height=100> </td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" name="car" value="화물트럭">
				튼튼합니다 화물트럭 숙식 가능
			</td>
			<td>
				<img src="t660.jpg" width=130 height=100> </td>
		</tr>
		<tr>
			<td><input type="checkbox" name="car" value="디즈니카">
				맥 맥퀸 달팽이차 등등 디즈니카~~</td>
			<td><img src="lightning Mcqueen.jpg" width=130 height=100> </td>
		</tr>
		<tr>
			<td><input type="checkbox" name="car" value="옵티머스프라임">
				옵티머스 프라임~ 자동 음성 지원</td>
			<td><img src="optimus prime.jpg" width=130 height=100> </td>
		</tr>
	</table><p>

	<input type="submit" value="장바구니에 저장"> &nbsp;&nbsp;&nbsp;
	<a href = "menu.jsp"> 메뉴로 돌아가기 </a>
	</form>
</body>
</html>