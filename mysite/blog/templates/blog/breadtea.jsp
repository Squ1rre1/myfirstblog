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
<input type="radio" name="bread" value="ȣ��" > ȣ����~ <br>
<input type="radio" name="bread" value="�Ļ�" > �׷��� �Ļ� <br>
<input type="radio" name="bread" value="���ϻ�" > ���󿡸� ���ϻ� <br>
<input type="radio" name="bread" value="��ũ������" > ���־��, ��ũ�� ����~ <p>
����: <input type="text" name="breadnum" value="0" > ��
</fieldset>
<p>
<fieldset>
<legend><b>TEA</b></legend>
<input type="radio" name="tea" value="�Ƹ޸�ī��" > Ŀ�Ǵ� ���� �Ƹ޸�ī�� <br>
<input type="radio" name="tea" value="īǪġ��" > �ó��� ��� ���� īǪġ��!!! <br>
<input type="radio" name="tea" value="����" > ������ ���������ִ� �׸� Ƽ~ <br>
<input type="radio" name="tea" value="��ũƼ" > �ε巯���� ��ũ Ƽ~ <p>
����: <input type="text" name="teanum" value="0" > ��
</fieldset>
<p>
<input type="submit" value="��ٱ��Ͽ� ����"> &nbsp;&nbsp;&nbsp;
<a href = "menu.jsp"> �޴��� ���ư��� </a>
</form>
</body>
</html>