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
	당신이 선택한 항목입니다.
	<hr>
	<c:forEach var="item" items="${paramValues.item}" varStatus="status">
		${item} <c:if test="${not status.last}">, </c:if>
	</c:forEach>
</body>
</html>

<%-- 
<c:forEach>: JSTL 라이브러리에서 제공하는 태그로, 지정된 컬렉션 또는 배열을 반복하여 처리할 때 사용.

var="item": 반복되는 요소를 참조할 때 사용할 변수 이름을 정의.

items="${paramValues.item}": HTTP 요청에서 item 이라는 이름의 매개변수로 전달된 값들을 가져옴. 

이 값들은 배열 형태로 제공.

varStatus="status": 반복문 내에서 현재 반복 상태를 관리할 수 있는 변수를 정의. 

이 변수를 통해 현재 반복이 몇 번째인지 등의 정보를 얻을 수 있음.

${item}: 현재 반복되는 요소의 값을 출력.

<c:if test="${not status.last}">, </c:if>: 현재 반복이 마지막 요소가 아닌 경우에만 쉼표를 출력. 

이렇게 함으로써 마지막 요소 뒤에는 쉼표가 출력되지 않음.
--%>