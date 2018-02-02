<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
	a =confirm("탈퇴하시면 더 이상 서비스를 이용하실 수 없습니다. 계속 진행하시겠습니까?")
	if(a){
		location.href="delete_member.jsp";
	}else{
		location.href="menu.jsp";
	}
</script>
</body>
</html>