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
	<c:set var="age" value="30" scope="page"></c:set>
나이:<c:out value="${age}">10</c:out>
	<br>
	<c:remove var="age" scope="page"></c:remove>
나이:<c:out value="${age}">10</c:out>
	<br>
나이:<c:out value="${age}">510</c:out>
	<br>	
	<c:catch var="errmsg">
예외 발생 전<br>
	<%=1 / 0%><br>
예외 발생 후<br>
	</c:catch>
	<c:out value="${errmsg}">></c:out>
</body>
</html>


<%-- 
<c:set> 태그:

var 속성에는 변수의 이름을 지정합니다. 여기서는 "age"를 사용합니다.
value 속성에는 변수에 할당할 값을 지정합니다. 여기서는 "30"을 사용합니다.
scope 속성에는 변수의 유효 범위를 지정합니다. 여기서는 "page"를 사용하여 페이지 스코프에 변수를 설정합니다.

<c:out> 태그:

${age}를 사용하여 설정된 변수 값을 출력합니다. 여기서는 "30"을 출력합니다.

<c:remove> 태그:

var 속성에는 제거할 변수의 이름을 지정합니다. 여기서는 "age"를 사용합니다.
scope 속성에는 변수의 유효 범위를 지정합니다. 여기서는 "page"를 사용하여 페이지 스코프에서 변수를 제거합니다.
다시 <c:out> 태그를 사용하여 ${age}를 출력합니다. 이제는 변수가 제거되었으므로 값이 없으므로 아무 것도 출력되지 않습니다.

<c:catch> 태그:

예외를 처리하는 데 사용됩니다. 여기서는 0으로 나누는 예외를 발생시키려고 시도합니다.
<%=1 / 0%>는 의도적으로 예외를 발생시키는 코드입니다.
<c:out> 태그를 사용하여 예외 메시지를 출력합니다.
--%>







