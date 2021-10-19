<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.soso.login.Dto.UserDto"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% 
	UserDto dto = (UserDto)session.getAttribute("dto");
%>
<body>
<h1>성공</h1>
<div>
	<span><%=dto.getUser_id() %>님 환영합니다.</span>
</div>
</body>
</html>