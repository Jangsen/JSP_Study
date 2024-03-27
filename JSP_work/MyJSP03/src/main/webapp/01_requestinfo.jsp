<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
컨텍스트 패스 : <%= request.getContextPath() %> <br>
요청방식 : <%= request.getMethod() %> <br>			<%-- default == get --%>
요청한 URL : <%= request.getRequestURL() %> <br>	
요청한 URI : <%= request.getRequestURI() %> <br>	
서버의 이름 : <%= request.getServerName() %> <br>
프로토콜 : <%= request.getProtocol() %> <br>
</body>
</html>

<%--
요청 정보 출력 코드 설명
컨텍스트 패스: 서버에 배포된 애플리케이션의 루트 경로를 출력합니다.
요청 방식: 클라이언트가 서버에 요청한 HTTP 메소드(GET, POST 등)를 출력합니다. 기본값은 GET입니다.
요청한 URL: 클라이언트가 요청한 전체 URL을 출력합니다.
요청한 URI: 클라이언트가 요청한 URI(Uniform Resource Identifier)를 출력합니다.
서버의 이름: 요청을 처리하는 서버의 이름을 출력합니다.
프로토콜: 클라이언트와 서버 간의 통신에 사용된 프로토콜을 출력합니다.
--%>