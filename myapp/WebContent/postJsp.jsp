<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Post Servlet 방식</h1>
	<form method="post" action="postServlet">
		id : <input name="id"><br>
		pw : <input name="pw" type="password"><br>
		email : <input name="email"><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>