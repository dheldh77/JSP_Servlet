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
	if(id != null){
		
	%>
	<script>
		alert("로그인 되었습니다.! ");
		location.href = "sessionLoginOK.jsp";
	</script>
	<%
	}
	%>
	<h2>세션 로그인 </h2>
	<form method="post" action="sessionLoginProc.jsp">
		ID : <input name = "id">
		PW : <input type = "password" name = "pw">
		<input type = "submit" value = "submit">
		<input type = "reset" value = "reset">
	</form>
</body>
</html>