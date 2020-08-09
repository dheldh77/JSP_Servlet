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
	String protocol = request.getProtocol();
	String serverName = request.getServerName();
	int serverPort = request.getServerPort();
	String remoteAddr = request.getRemoteAddr();
	String remoteHost = request.getRemoteHost();
	String method = request.getMethod();
	StringBuffer requestURL = request.getRequestURL();
	String requestURI = request.getRequestURI();
	String useBrowser = request.getHeader("User-Agent");
	String fileType = request.getHeader("Accept");
	%>
	<h1>Request Example2</h1>
	프로토콜 : <%= protocol %><br>
	서버의 이름 : <%= serverName %><br>
	서버의 포트 번호 : <%= serverPort%><br>
	사용자 컴퓨터의 주소 : <%= remoteAddr %><br>
	사용자 컴퓨터의 이름 : <%= remoteHost %><br>
	사용 method : <%= method %><br>
	요청 경로(URL) : <%= requestURL %><br>
	요청 경로(URI) : <%= requestURI %><br>
	현재 사용하는 브라우저 : <%= useBrowser %><br>
	브라우저가 지원하는 file의 type : <%= fileType %><br>
</body>
</html>