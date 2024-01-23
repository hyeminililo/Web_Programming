<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.time.LocalDate"%>

<% 
// LocalDate는 로컬날짜클래스로 날짜 정보 필요할 때 사용 -> 날짜 정보만 사용 
LocalDate today = LocalDate.now();  // 오늘 날짜
//LocalDateTime은 날짜와 시간 정보 모두 출력 ~ 
LocalDateTime tomorrow = LocalDateTime.now().plusDays(1);  // 내일 날짜
%>