<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
	%>
	<h1>Forward Tag Example2</h1>
	<%=name %>님의 혈액형은<br>
	<%= bloodType %> 형이고 <br>
	신중한 성격을 가지고 있습니다.
</body>
</html>