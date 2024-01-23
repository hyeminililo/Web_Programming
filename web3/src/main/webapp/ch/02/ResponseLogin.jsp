<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>내장 객체 - response(ResponseLogin)</title>
</head>
<body>
<% // 각 name에서 얻은 값 getParameter를 이용해 저장 
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pw"); 
if (id.equalsIgnoreCase("web") && pwd.equalsIgnoreCase("WEb")) { // 대소문자를 구분하지 않음!
    response.sendRedirect("ResponseWelcome.jsp"); // 로그인 성공시 sendRedirect를 이용해 페이지로 보냄 
}
else { // else일 때, 로그인 실패를 나타내는 loginErr= 1 파라미터 제공하고 현재 요청과 응답 객체에 전달해 처리 
    request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response); 
}
%>
</body>
</html>