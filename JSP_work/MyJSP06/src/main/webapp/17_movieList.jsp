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
	<c:forEach var="cnt" begin="1" end="10" varStatus="status">
${cnt} <c:if test="${not status.last }">, </c:if>
	</c:forEach>
	<br>
	<br>
	<table border="1" style="width: 100%; text-align: center;">
		<tr>
			<th>index</th>
			<th>count</th>
			<th>cnt</th>
		</tr>
		<c:forEach var="cnt" begin="7" end="10" varStatus="status">
			<tr>
				<td>${status.index}</td>
				<td>${status.count}</td>
				<td>${cnt}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<table border="1" style="width: 100%; text-align: center;">
		<tr>
			<th>index</th>
			<th>count</th>
			<th>cnt</th>
		</tr>
		<c:forEach var="cnt" begin="1" end="10" varStatus="status" step="2">
			<tr>
				<td>${status.index}</td>
				<td>${status.count}</td>
				<td>${cnt}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

<%-- 
첫 번째 <c:forEach> 블록:

begin="1"과 end="10"를 사용하여 1부터 10까지의 숫자를 반복.
${cnt}는 현재 반복되는 숫자를 출력.
<c:if>를 사용하여 현재 반복이 마지막 요소가 아닌 경우에만 쉼표를 출력.
두 번째 <c:forEach> 블록:

테이블을 생성하여 출력합니다.
begin="7"과 end="10"를 사용하여 7부터 10까지의 숫자를 반복.
${status.index}는 현재 반복되는 요소의 인덱스를 출력.
${status.count}는 현재까지 반복된 횟수를 출력.
${cnt}는 현재 반복되는 숫자를 출력.
세 번째 <c:forEach> 블록:

또 다른 테이블을 생성하여 출력합니다.
begin="1"과 end="10"을 사용하여 1부터 10까지의 숫자를 반복합니다.
step="2"를 사용하여 반복을 2씩 증가시킵니다. 즉, 1, 3, 5, 7, 9와 같은 홀수만 출력됩니다.
나머지 내용은 두 번째 블록과 유사합니다.
--%>