<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!--isErrorPage 속성에 true를 지정-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage, /isErrorPage 속성(설정한 에러페이지 작성)</title>
</head>
<body>
	<h2>서비스 중 일시적인 오류가 발생하였습니다.</h2>
	<p>
	<!-- 내장 객체로 연결해서 내장객체에 지정한 메세지로 오류 출력 -->
		오류 클래스: <%= exception.getClass().getName() %><br />
		오류 메시지: <%= exception.getMessage() %>
	</p>
</body>
</html>