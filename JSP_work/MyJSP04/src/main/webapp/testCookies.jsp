<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
Cookie info  = new Cookie("testCookie","I am First Cookie!"); 
Cookie info1 = new Cookie("testCookie","I am Second Cookie!"); 
Cookie info2 = new Cookie("testCookie","I am 3rd Cookie!"); 
Cookie info3 = new Cookie("testCookie","I am 4st Cookie!"); 
info.setComment("First Cookie!");
info1.setComment("Second Cookie!");

%>
</body>
</html>