<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public String getParam(HttpServletRequest request, String paramName){
		if(request.getParameter(paramName) != null){
			return request.getParameter(paramName);
		}else{
			return "";
		}
	}
	%>
	
	<%
	request.setCharacterEncoding("UTF-8");
	int cnt = 0;
	if(request.getParameter("addcnt") != null){
		cnt = Integer.parseInt(request.getParameter("addcnt"));
	}
	%>
	<script>
		function inputValue(form1, param, form2, idx){
			var paramValue = form1.elements[idx].value;
			form2.elements[idx].value = paramValue;
			return;
		}

		function addFile(formName){
			if(formName.addcnt.value == ""){
				alert("입력할 파일 개수를 입력하고 확인버튼을 눌러주세요 ! ");
				formName.addcnt.focus();
				return;
			}
			formName.submit();
		}

		function elementCheck(formName){
			paramIndex = 1;
			for(idx = 0; idx < formName.elements.length; idx++){
				if(formName.elements[idx].type == "file"){
					if(formName.elements[idx].value == ""){
						var message = paramIndex + "번째 파일정보가 누락되었습니다.\n 업로드할 파일을 선택해 주세요 ";
						alert(message);
						formName.elements[idx].focus();
						return;
					}
					paramIndex++;
				}
			}
			formName.action = "fileInfoView.jsp";
			formName.submit();
		}
	</script>
	<h6>복수 개의 파일을 업로드를 위해 파일 갯수를 입력한 후 확인 버튼을 눌러주세요 !!! </h6>
	<h6>입력이 완료되면 DONE 버튼을 눌러주세요 </h6>
	<form method="post" name="frmName1">
		USER : <input name="user" onkeyup="inputValue(this.form, user, frmName2, 0)" value = "<%= getParam(request, "user") %>" /><br>
		TITLE : <input name="title" onkeyup="inputValue(this.form, title, frmName2, 1)" value= "<%= getParam(request, "title") %>" /><br>
		CONTENT <br>
		<textarea name="content" cols="40" onkeyup="inputValue(this.form, content, frmName2, 2)"><%= getParam(request, "content") %></textarea><br>
		추가할 파일 수 입력 : <input name="addcnt">
		<input type="button" value = "확인" onclick="addFile(this.form)">
	</form>
	<form method="post" name="frmName2" enctype="multipart/form-data">
		<input type="hidden" name="user" value="<%=getParam(request, "user") %>">
		<input type="hidden" name="title" value="<%= getParam(request, "title") %>">
		<input type="hidden" name="content" value="<%= getParam(request, "content") %>">
		<% for(int i = 0; i < cnt; i++){ %>
			<input type = "File" size= "50" name="selectFile<%=i %>"><br> 
		<% } %>
		<input type="button" value="DONE" onclick="elementCheck(this.form)"><br>
	</form>
</body>
</html>