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
	
	<h4><font color="blue"><%=id %></font>��, � ���� ���ϼ���?</h4>
	<form method="post" action="save_car.jsp">
	<table border="1">
		<tr>
			<td><input type="checkbox" name="car" value="���������">
				�� ��������� �����ÿ���� �����ô�</td>
			<td><img src="lambo.jpg" width=130 height=100> </td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" name="car" value="ȭ��Ʈ��">
				ưư�մϴ� ȭ��Ʈ�� ���� ����
			</td>
			<td>
				<img src="t660.jpg" width=130 height=100> </td>
		</tr>
		<tr>
			<td><input type="checkbox" name="car" value="�����ī">
				�� ���� �������� ��� �����ī~~</td>
			<td><img src="lightning Mcqueen.jpg" width=130 height=100> </td>
		</tr>
		<tr>
			<td><input type="checkbox" name="car" value="��Ƽ�ӽ�������">
				��Ƽ�ӽ� ������~ �ڵ� ���� ����</td>
			<td><img src="optimus prime.jpg" width=130 height=100> </td>
		</tr>
	</table><p>

	<input type="submit" value="��ٱ��Ͽ� ����"> &nbsp;&nbsp;&nbsp;
	<a href = "menu.jsp"> �޴��� ���ư��� </a>
	</form>
</body>
</html>