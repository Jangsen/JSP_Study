<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <% request.setCharacterEncoding("UTF-8");%>
        <jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean" />
        <jsp:setProperty name="member" property="*" />	<%-- property="*" (member 변수 만큼 Setter) 
        															addMemberForm 에서 입력 내용을 받음--%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Insert title here</title>
        </head>

        <body>
            <h2>입력 완료된 회원 정보</h2>
            <table>
                <tr>
                    <td> 이름 </td>
                    <td>
                        <jsp:getProperty name="member" property="name" />
                    </td>
                </tr>
                <tr>
                    <td> 아이디 </td>
                    <td>
                        <jsp:getProperty name="member" property="userid" />
                    </td>
                </tr>
                <tr>
                    <td> 별명 </td>
                    <td>
                        <jsp:getProperty name="member" property="nickname" />
                    </td>
                </tr>
                <tr>
                    <td> 비밀번호</td>
                    <td>
                        <jsp:getProperty name="member" property="pwd" />
                    </td>
                </tr>
                <tr>
                    <td> 이메일 </td>
                    <td>
                        <jsp:getProperty name="member" property="email" />
                    </td>
                </tr>
                <tr>
                    <td> 전화번호</td>
                    <td>
                        <jsp:getProperty name="member" property="phone" />
                    </td>
                </tr>
            </table>
        </body>

        </html>