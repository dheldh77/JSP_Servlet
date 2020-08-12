<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String path = request.getRealPath("filestorage");
	String encType = "UTF-8";
	int maxSize = 5 * 1024 * 1024;
	
	ServletContext context = getServletContext();
	ArrayList saveFiles = new ArrayList<>();
	ArrayList originFiles = new ArrayList<>();
	
	String user = "";
	String title = "";
	String content = "";
	
	try{
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encType, new DefaultFileRenamePolicy());
		
		user = multi.getParameter("user");
		title = multi.getParameter("title");
		content = multi.getParameter("content");
		
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()){
			String name = (String)files.nextElement();
			saveFiles.add(multi.getFilesystemName(name));
			originFiles.add(multi.getOriginalFileName(name));
		}
	%>
	USER : <%= user %>
	TITLE : <%= title %>
	CONTENT : <%= content %>
	업로드한 파일들입니다.<br>
	<% 
	for(int i = 0; i < saveFiles.size(); i++){
	%>
	<a href="<%= "./filestorage/" + saveFiles.get(i) %>"><%= originFiles.get(i) %></a><br>
	<% } %>
	<%
	} catch (IOException ex){
		System.out.println(ex);
	} catch (Exception ex){
		System.out.println(ex);
	}
	%>
</body>
</html>