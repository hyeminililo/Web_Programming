<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id ="calc" class="common.Calculator"/>
    <jsp:setProperty name="calc" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	calcProcess2의 계산 결과 : <%= calc.calc()%>
</body>
</html>