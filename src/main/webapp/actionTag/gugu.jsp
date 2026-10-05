<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String num1 = request.getParameter("num");
	
	for(int i = 1; i <= 9; i++) {
		int result = Integer.parseInt(num1) * i;
		out.print(num1 + " × " + i + " = " + result + "<br>"); 
	}
	
%>
</body>
</html>