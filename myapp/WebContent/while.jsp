<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>while Example</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	int num = Integer.parseInt(request.getParameter("num"));
	int cnt = 0;
	while(num > cnt){
	%>
	<%= msg %><br>
	<%
	cnt++;
	}
	%>
</body>
</html>