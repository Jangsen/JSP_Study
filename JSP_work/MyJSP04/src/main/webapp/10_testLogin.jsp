<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id="12341234";
String pwd="1234";
String name="1234";
if(id.equals(request.getParameter("id")) &&
pwd.equals(request.getParameter("pwd")) ){
session.setAttribute("loginUser", name);
response.sendRedirect("10_main.jsp");
}
else{
response.sendRedirect("10_loginForm.jsp");
}
%>