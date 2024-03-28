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
	<c:url value="images/pic.jpg" var="data"></c:url>
		<h3>${data}</h3>
		<img src="${data}" width='200' height='200'>
</body>
</html>

<%--

data 에 images/pic.jps 를 담아서 호출

<c:url> 태그:

value 속성에는 이미지 파일의 상대 또는 절대 경로를 지정합니다. 
여기서는 "images/pic.jpg"를 사용합니다.
var 속성에는 설정된 URL을 저장할 변수의 이름을 지정합니다.
여기서는 "data"를 사용합니다.

${data}:

설정된 이미지 URL을 출력합니다.
이는 <c:url> 태그를 통해 생성된 이미지의 절대 경로입니다.

<img> 태그:

src 속성에는 이미지 파일의 경로를 지정합니다. 
여기서는 ${data}를 사용하여 설정된 이미지 URL을 가져옵니다.
width와 height 속성은 이미지의 너비와 높이를 지정합니다.
--%>