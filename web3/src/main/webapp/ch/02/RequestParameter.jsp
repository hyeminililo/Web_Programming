<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>내장 객체 - request(요청 매개변수 읽기)</title>
</head>
<body>
<h3>2. 클라이언트의 요청 매개변수 출력</h3>
<%
request.setCharacterEncoding("UTF-8"); //encoding
// 매개변수 읽은 값 저장 
String id = request.getParameter("id");  
String sex = request.getParameter("sex");
// 여러개의 폼 일수 있으므로 getParameterValues로 배열로 저장 
String[] favo = request.getParameterValues("favo");
//반복문으로 출력 
String favoStr = "";
if (favo != null) {  
    for (int i = 0; i < favo.length; i++) {
        favoStr += favo[i] + " ";
    }
}
// \r\n을 <br>로 변환
String intro = request.getParameter("intro").replace("\r\n", "<br/>");  
%>

<ul>
    <li>아이디 : <%= id %></li>
    <li>성별 : <%= sex %></li>
    <li>관심사항 : <%= favoStr %></li>
    <li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>