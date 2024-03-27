<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cookie &amp; Session</title>
</head>
<body>
<%
		session.setAttribute("s_name1", "저는 세션에 저장된 첫 번째 값이에요. ^o^ ");
		session.setAttribute("s_name2", "저는 세션에 저장된 두 번째 값이에요. ^o^ ");
		session.setAttribute("s_name3", "저는 세션에 저장된 세 번째 값이에요. ^o^ ");
		
		out.print(" <h3> >> 세션값을 삭제하기 전 << </h3> ");
		Enumeration names;
		names = session.getAttributeNames();
		while (names.hasMoreElements()) {
			String name = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.println(name + " : " + value + "<br>");
		}
		// 이름을 지정하여 세션에 저장된 객체를 제거합니다.
		session.invalidate();
		
		out.print("<hr> <h3> >>세션값을 삭제한 후<< </h3> ");
		out.print("Q : 과연 세션 아이디가 유효할까요?<br>");
		if(request.isRequestedSessionIdValid()==true)
			out.print("A : 세션 아이디가 유효합니다. <hr>");
		else
			out.print("A : 세션 아이디가 유효하지 않습니다. <hr>");
	%>
</body>
</html>

<%-- 
Valid == 유효하다 
invalid == 무효하다 
--%>