<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Declaration Example2</h1>
	<%!
	int one;
	int two = 1;
	public int plusMethod(){
		return one + two;
	}
	
	String msg;
	int three;
	%>
	
	one + two ? <%= plusMethod() %><p>
	String msg ? <%= msg %><p>
	int three ? <%= three %>
</body>
</html>