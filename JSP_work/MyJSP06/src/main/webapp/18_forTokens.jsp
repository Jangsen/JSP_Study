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
	<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
${city} <br>
	</c:forTokens>
	<hr>
	<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
${city} <br>
	</c:forTokens>
</body>
</html>

<%-- 
첫 번째 <c:forTokens> 블록:

items 속성에는 처리할 문자열이 포함된 문자열을 지정합니다. 

여기서는 "서울.인천,대구.부산"을 사용합니다.

delims 속성에는 토큰으로 사용할 구분자를 지정합니다. 

여기서는 ,를 사용합니다.

따라서 "서울.인천"과 "대구.부산"이 각각 하나의 토큰으로 처리됩니다.

${city}는 현재 반복되는 토큰을 출력합니다.
<hr> 태그:

수평선을 표시하여 두 번째 <c:forTokens> 블록과 구분합니다.

두 번째 <c:forTokens> 블록:

앞선 블록과 동일한 내용을 가지지만, delims 속성이 "., "로 설정되어 있습니다. 

이는 ,와 . 그리고 공백을 구분자로 사용한다는 의미입니다.

따라서 "서울", "인천", "대구", "부산"이 각각 하나의 토큰으로 처리됩니다.

${city}는 현재 반복되는 토큰을 출력합니다.

--%>