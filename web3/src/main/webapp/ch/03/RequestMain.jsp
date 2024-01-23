<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("requestString", "request 영역의 문자열");
request.setAttribute("requestPerson", new Person("안중근", 31)); 
%>
<html>
<head><title>request 영역 최초 페이지</title></head>
<body>
<!-- 포워드를 이용해 페이지를 전달했기 때문에 request영역에 저장된 데이터는 소멸됨  -->
    <h2>request 영역의 속성값 삭제하기</h2>
    <%
        request.removeAttribute("requestString"); 
        request.removeAttribute("requestInteger"); // 에러 없음
    %>
    <h2>request 영역의 속성값 읽기</h2>
    <%
    Person rPerson = (Person)(request.getAttribute("requestPerson"));
    %>
    <ul>
        <li>String 객체 : <%= request.getAttribute("requestString") %></li>
        <li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
    </ul>
    <h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
    <% // getRequestDispatcher()로 객체가 요청을 다른 페이지로 넘겨줌 => 매개변수로 전달 
    request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English").forward(request, response);
    %>
</body>
</html>