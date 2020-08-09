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
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String num = request.getParameter("num");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	
	if(gender.equals("man")) gender = "남자";
	else gender = "여자";
	%>
	
	<h1>Request Example1</h1>
	성명 : <%= name %><br>
	학번 : <%= num %><br>
	성별 : <%= gender %><br>
	학과 : <%= major %>
</body>
</html>