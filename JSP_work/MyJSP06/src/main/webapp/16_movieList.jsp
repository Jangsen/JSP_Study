<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head><body>
	<%	String[] movieList = { "타이타닉", "시네마 천국", "혹성 탈출", "킹콩" };
		pageContext.setAttribute("movieList", movieList);	%>
	<ul>
		<c:forEach var="movie" items="${movieList}" varStatus="status">
			<c:choose>
				<c:when test="${status.first }">
					<li style="font-weight: bold; color: red;">${movie}</li>
				</c:when>
				<c:otherwise>
					<li>${movie}</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
	<c:forEach var="movie" items="${movieList}" varStatus="status">
${movie} <c:if test="${not status.last}">, </c:if>
	</c:forEach>
</body>
</html>

<%-- 
첫 번째 스크립트릿(<% %>)은 영화 목록을 정의하고 pageContext 객체에 movieList라는 이름으로 저장

<ul> 요소는 순서가 있는 목록을 나타내며, 여기서 JSTL의 <c:forEach> 태그를 사용하여 movieList 배열을 반복. 

각 영화는 <li> 요소로 표시.

<c:forEach> 태그 내에서 <c:choose>와 <c:when>, <c:otherwise>를 사용하여 첫 번째 영화에는 글꼴을 굵게 표시하고 빨간색으로 표시

두 번째 <c:forEach> 태그는 영화 목록을 다시 반복하고 각 영화 제목을 쉼표로 구분하여 출력합니다. 이때 <c:if> 태그를 사용하여 마지막 영화 뒤에는 쉼표가 추가되지 않도록 합니다.
--%>