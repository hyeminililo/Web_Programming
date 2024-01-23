<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	<title>내장 객체 - response(ResponseMain)</title>
</head>
<body>
	<% //만약 LoginErr 파라미터가 존재하면 로그인 실패하는 메세지 출력 
	String loginErr = request.getParameter("loginErr");
	if (loginErr != null)
		out.print("로그인 실패");
	%>
	<h3>1. 로그인 처리</h3>
	<form action="./ResponseLogin.jsp" method="post">
		계정: <input type="text" name="user_id" /><br />
		암호: <input type="text" name="user_pw" /><br />
		<input type="submit" value="로그인" />
	</form>

	<h3>2. HTTP 응답 헤더 설정</h3>
	<form action="./ResponseHeader.jsp" method="get">
		날짜 형식: <input type="text" name="add_date" value="2023-11-02 09:00" /><br />
		숫자 형식: <input type="text" name="add_int" value="2023" /><br />
		문자 형식 : <input type="text" name="add_str" value="홍길동" /><br />
		<input type="submit" value="전송" />
	</form>
</body>
</html>