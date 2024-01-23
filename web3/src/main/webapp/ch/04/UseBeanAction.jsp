<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>액션 태그 - UseBeanAction</title></head>
<body>
    <h3>액션 태그로 폼값 한 번에 받기</h3>
    <jsp:useBean id="person" class="common.Person" />  
    <!-- 와일드카드로 폼 값을 한 번에 설정 -->
    <jsp:setProperty property="*" name="person" />  
    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name" /></li>  
        <li>나이 : <jsp:getProperty name="person" property="age" /></li> 
    </ul>
</body>
</html>