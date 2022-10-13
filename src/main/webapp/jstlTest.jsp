<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>	
	<%--  
		<%! int score = 99; %>
		<%= score %>
	--%>
	<c:set var="score" value="99" />
	<h1>score : <c:out value="${score }" /></h1>
	<br>
	<c:remove var="score"/>
	삭제 후 score 출력 : <c:out value="${score }" />
	<br>
	예외처리:<br>
	<c:catch var="error">
		<%= 10/0 %>
	</c:catch>
	<c:out value="${error }"></c:out>
	<br>
	if문:<br>
	<c:if test="${10>3 }">		
		TRUE입니다!
	</c:if>
	<%-- 
	<%
		if(10>3) {
			out.println("TRUE입니다!");
		}
	%>
	 --%>
	<br>
	if else문:<br>
	<c:choose>
		<c:when test="${10>3 }">
			TRUE입니다!
		</c:when>
		<c:otherwise>
			FALSE입니다!
		</c:otherwise>
	</c:choose>
	<%-- 
	<%
		if(10>3) {
			out.println("TRUE입니다!");
		} else {
			out.println("FALSE입니다!");
		}		
	%>
	 --%>
	 <br>
	if else if 문:
	<br>
	<c:choose>
		<c:when test="${10>3 }">
			TRUE1입니다!
		</c:when>
		<c:when test="${1>3 }">
			TRUE2입니다!
		</c:when>
		<c:otherwise>
			FALSE입니다!
		</c:otherwise>
	</c:choose>
	<%--  
	<%
		if(10>3) {
			out.println("TRUE1입니다!");
		} else if(1>3) {
			out.println("TRUE2입니다!");
		} else {
			out.println("FALSE입니다!");
		}		
	%>
	--%>
	<br>
	for 문 : <br>
	<c:forEach var="i" begin="0" end="9" step="1">
		${i }<br>
	</c:forEach>
	<%--  
	<%
		for(int i=0;i<10;i++) {
			out.println(i+"<br>");
		}
	%>
	--%>
	<!-- 
	<c:forEach var="data" items="${list }">
		${data.subject } / ${data.name } / ${data.date }<br>
	</c:forEach>
	 -->
</body>
</html>