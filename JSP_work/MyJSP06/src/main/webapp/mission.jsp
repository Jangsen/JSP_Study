﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action=missionresult.jsp method="post">
	아이디 : <input type="text" name="userid"><br>
	암&nbsp;&nbsp;&nbsp;호 : <input type="password" name="pwd"><br>
	<input type="radio" name="admin" checked="checked" value="1">사용자
	<input type="radio" name="admin" value="2"> 관리자
	<input type="radio" name="admin" value="3"> 누구나<br>
		<input type="submit" value="로그인">
</form>
</body>
</html>