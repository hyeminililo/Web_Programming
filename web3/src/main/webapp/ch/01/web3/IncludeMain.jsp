<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 지시어가 다른 것끼리 따로 써야하는거 주의 -->
	<!-- Include.jsp에 있는 파일 포함 -->
<%@ include file="IncludeFile.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>include 지시어</title>
</head>
<body>
	<%
	out.println("오늘 날짜 : " + today);
	out.println("<br/>");
	out.println("내일 날짜 : " + " "+ tomorrow);
	%>
</body>
</html>