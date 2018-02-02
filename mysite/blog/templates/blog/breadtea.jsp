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
%>
<body bgcolor="80FF00">
<h4> <font color="blue"><%=id%></font> is hungry ^^ </h4>
<form method="post" action="save_breadtea.jsp" >
<fieldset>
<legend><b>BREAD</b></legend>
<input type="radio" name="bread" value="호빵" > 호빵맨~ <br>
<input type="radio" name="bread" value="식빵" > 그래도 식빵 <br>
<input type="radio" name="bread" value="단팥빵" > 도라에몽 단팥빵 <br>
<input type="radio" name="bread" value="생크림케익" > 맛있어요, 생크림 케익~ <p>
수량: <input type="text" name="breadnum" value="0" > 개
</fieldset>
<p>
<fieldset>
<legend><b>TEA</b></legend>
<input type="radio" name="tea" value="아메리카노" > 커피는 역시 아메리카노 <br>
<input type="radio" name="tea" value="카푸치노" > 시나몬 듬뿍 넣은 카푸치노!!! <br>
<input type="radio" name="tea" value="녹차" > 마음을 진정시켜주는 그린 티~ <br>
<input type="radio" name="tea" value="밀크티" > 부드러워요 밀크 티~ <p>
수량: <input type="text" name="teanum" value="0" > 잔
</fieldset>
<p>
<input type="submit" value="장바구니에 저장"> &nbsp;&nbsp;&nbsp;
<a href = "menu.jsp"> 메뉴로 돌아가기 </a>
</form>
</body>
</html>