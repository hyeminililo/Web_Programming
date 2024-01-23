<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 속성 저장
pageContext.setAttribute("pageInteger", 1000); // 속성명 , 값 
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
// Common package 안에  만든 person 생성자
pageContext.setAttribute("pagePerson", new Person("한석봉", 99)); 
%>
<html>
<head>
	<title>page 영역- page 영역에 속성값 저장하고 불러오기</title>
</head>
<body>
    <h2>page 영역의 속성값 읽기</h2>
    <%
    // 속성 읽기 (Object로 자동 형변환되어 저장되어 원래 타입으로 형변환 후 사용)
    int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
    String pString = pageContext.getAttribute("pageString").toString();
    Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
    %>
    <ul> 
        <li>Integer 객체 : <%= pInteger %></li>
        <li>String 객체 : <%= pString %></li>
        <li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>        
    </ul>
	<!-- include 지시어를 이용해 page 영역 읽어오기  -->
    <h2>include된 파일에서 page 영역 읽어오기</h2>
    <%@ include file="PageInclude.jsp" %>
     <!-- 별도 페이지로 이동하므로 객체 값은 없다고 뜸  --> 
    <h2>페이지 이동 후 page 영역 읽어오기</h2>
    <a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>