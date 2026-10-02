<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello JSP!!</h1>
	Hello! Java Server Pages.

	<h2>Scripting Tag</h2>
	<!-- count는 전역변수 -->
	<%! int count = 3;
 		String makeItLower(String data){
		return data.toLowerCase();
	}
	%>

	<%
		for(int i = 1; i <= count; i++) {
			out.println("Java Server Pages " + i + ".<br>");
		}
	%>

	<%= makeItLower("Hello World<br>") %>

	<% out.print(myMethod(0) + "<br>"); %>

	<%!
		public int myMethod(int count) {
		return ++count;
	}
	%>

	<%
		int a = 10;
	%>
	<!-- a는 지역변수 -->

	<% for(int i = 0; i < a; i++){
		out.println(i + "번째 입니다.<br>");
	}
		%>

	<%= a + count %> <!-- %=는 System.out.print와 같은 역할 -->
	<%! String str = "Hi~"; %>
	<%= str %>
	
	<br>
	<hr>
	
	<c:set var = "a" value = "10"/>
	<c:out value="${a }"></c:out>
	
	<br>
	<hr>
	
	<c:set var = "b" value = "1, 2, 3, 4, 5, 6, 7, 8, 9, 10"/>
	<c:forEach var = "i" begin = "0" end = "${fn:length(b)} - 1" step = "1">
		<c:forEach var = "j" begin = "0" end = "${fn:length(b) - 1 - i }" step = "1"></c:forEach>
	</c:forEach>
		
	<c:out value="JSTL Core 태그 라이브러리"/>

</body>
</html>