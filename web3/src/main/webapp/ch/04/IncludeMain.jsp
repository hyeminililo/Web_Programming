<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 포함할 파일의 경로
String outerPath1 = "./inc/OuterPage1.jsp";
String outerPath2 = "./inc/OuterPage2.jsp";

// page 영역과 request 영역에 속성 저장 
pageContext.setAttribute("pAttr", "동명왕");
request.setAttribute("rAttr", "온조왕");
%>
<html>
<head><title>지시어와 액션 태그 동작 방식 비교</title></head>
<body>
    <h2>지시어와 액션 태그 동작 방식 비교</h2>
    <!-- 지시어 방식 -->
    <h3>지시어로 페이지 포함하기</h3>
     <!--  외부파일 부분 출력 됨 -->
    <%@ include file="./inc/OuterPage1.jsp"%>
    <%--@ include file="<%= outerPath1 --%>" --%>
    <p>외부 파일에 선언한 변수 : <%= newVar1 %></p>

    <!-- 액션 태그 방식=> page 영역 공유 x --> 
    <h3>액션 태그로 페이지 포함하기</h3> 
    <!--  방법 아래처럼 2가지 -->
    <jsp:include page="./inc/OuterPage2.jsp" />
    <jsp:include page="<%= outerPath2 %>" />
    <!-- 액션 태그는 포함시킨 파일(Outerpage2)에서 생성된 변수 사용 불가  -->
    <p>외부 파일에 선언한 변수 : <%--= newVar2 --%></p>
</body>
</html>