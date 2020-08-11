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
	String id = (String)session.getAttribute("idKey");
	if(id == null){
	%>
	<script>
		alert("로그인 되지 않았습니다. ");
		location.href = "sessionLogin.jsp";
	</script>
	<%
	}
	%>
	<h2>Log On Page</h2>
	<%= id %>님이 로그인 하셨습니다.
	<a href = "sessionLogout.jsp">로그아웃</a>
</body>
</html>