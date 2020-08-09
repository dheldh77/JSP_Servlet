<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% java.util.Date date = new java.util.Date(); %>
	include 지시자의 Bottom 부분입니다.<br>
	<%= date.toLocaleString() %>
</body>
</html>