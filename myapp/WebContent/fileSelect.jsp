<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name = "frmName" method = "post" action = "viewPage.jsp" enctype = "multipart/form-data">
		user : <input name = "user"><br>
		title : <input name = "title"><br>
		file<br>
		<input type = "file" name = "uploadFile"><br>
		<input type = "submit" value = "submit">
	</form>
</body>
</html>