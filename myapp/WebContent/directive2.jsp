<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" session="true" buffer="16kb" autoFlush="true" isThreadSafe="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Directive Example2</h1>
	<%
		Date date = new Date();
	%>
	현재의 날짜와 시간은 ? <%= date.toLocaleString() %>
</body>
</html>