<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<meta charset="UTF-8">
<head><title>표현 언어(EL) - 폼값 처리</title></head>
<body>
    <h3>EL로 폼값 받기</h3>
    <ul>
    	// 하나의 값인 경우 param 내장 객체로 폼값을 받음 
        <li>이름: ${ param.name }</li>
        <li>성별: ${ param.gender }</li>
        <li>학력: ${ param.grade }</li>
        
        // 둘 이상의 값을 paramValues를 통해 String 배열로 받을 수 있음
        <li>관심: ${ paramValues.inter[0] } 
            ${ paramValues.inter[1] }
            ${ paramValues.inter[2] }
            ${ paramValues.inter[3] }</li> 
    </ul>
</body>
</html>