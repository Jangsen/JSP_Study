<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="10_header.jsp"/>
<%-- include page == 다른 페이지를 포함시킬때 사용가능 --%>
메인 화면입니다. <br>
<a href="10_sub.jsp">서브 페이지로 이동</a>
<jsp:include page="10_footer.jsp"/>
</body>
</html>