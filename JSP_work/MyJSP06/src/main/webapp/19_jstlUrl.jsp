<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="http://localhost:8082/MyJSP06/02_el.jsp" var="data"></c:import>
${data}

</body>
</html>

<%-- 
<c:import> 태그:

url 속성에는 가져올 콘텐츠의 URL을 지정합니다. 

여기서는 "http://localhost:8082/MyJSP06/02_el.jsp"를 사용합니다.

var 속성에는 가져온 콘텐츠를 저장할 변수의 이름을 지정합니다. 

여기서는 "data"를 사용합니다.

${data}:

<c:import> 태그를 통해 가져온 콘텐츠를 출력합니다.

이는 "02_el.jsp" 파일에서 생성된 HTML 코드입니다.
--%>