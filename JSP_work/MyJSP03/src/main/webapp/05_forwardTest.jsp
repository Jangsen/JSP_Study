<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int age=Integer.parseInt(request.getParameter("age"));
if(age<=19){
%>
<script type="text/javascript">
alert("19세 미만이므로 입장 불가능")
history.go(-1)
//이전 페이지로 되돌아감
</script>
<%
}else{
request.setAttribute("name", "성윤정");
//요청 객체에 "name"이라는 이름으로 "성윤정" 값을 저장
RequestDispatcher dispatcher
=request.getRequestDispatcher("05_forwardResult.jsp");
//RequestDispatcher 객체: 요청을 전달할 대상을 지정
dispatcher.forward(request, response);
}
%>

<%-- RequestDispatcher 객체: 요청을 전달할 대상을 지정
	 request.setAttribute("name", "성윤정");
	 요청 객체에 "name"이라는 이름으로 "성윤정" 값을 저장
--%>