<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> <!-- 지시어 부분 -->
<%!
String str1 = "JSP";
String str2 = "Hello!";	//멤버 변수나 메소드 선언 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HelloJSP</title>
</head>
<body>
	<h3>This is my first <%= str1 %> program.</h3> <!-- 표현식 -->
	<p>
		<%
		out.println(str2 + " Welcome to JSP class!"); 
		// 스클립틀릿(jsp페이지가 요청 받을 때 실행되어야 할 자바 코드를 작성하는 영역)
		%>
	</p>
</body>
</html>