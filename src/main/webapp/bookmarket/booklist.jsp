<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import = "java.util.*, com.dto.*, com.dao.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
	<jsp:include page = "header.jsp" flush = "false"/>
	<%!
		String greeting = "도서 목록";
	%>
	
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class = "container-fluid py-5">
			<h1 class = "display-5 fw-bold"><%=greeting %></h1>
			<p class = "col-md-8 fs-4">BookList &nbsp; <a href = "./addBook.jsp" class = "btn btn-light" role = "button">등록하기 &raquo;</a></p>
		</div>
	</div>
	
	<%--	BookRepository bookDAO = new BookRepository();
			위에 쓴 것과 같은 역할--%>
	<%
		BookRepository bookDAO = BookRepository.getInstance();
		ArrayList<Book> bookList = bookDAO.getBookList();
	%>

	<div class = "row align-items-md-stretch text-center">
		<%
			for(int i = 0; i < bookList.size(); i++){
				Book book = bookList.get(i);				
		%>
		<div class = "col-md-4">
			<div class = "h-100 p-2">
				<h5><b><%= book.getName() %></b></h5>
				<p><%= book.getAuthor() %></p>
				<p><%= book.getPublisher() %> | <%= book.getReleaseDate() %></p>
				<p style = "text-align: justify;"><%= book.getDescription().substring(0, 60) %>...</p>
				<p><%= book.getUnitPrice() %>원</p>
				<p><a href = "./book.jsp?id=<%=book.getBookId()%>" class = "btn btn-secondary" role = "button">상세정보 &raquo;</a></p> 
				<%-- 물음표 기호? id라는 네임으로 getBookId()라는 파라미터를 직접 보냄 & 기호: 자르기--%>
			</div>
		</div>
		<% } %>
	
	<jsp:include page = "footer.jsp" flush = "false"/>
	
	<%-- 같은 역할 --%>
	<%-- <%@ include file = "header.jsp" %>
	<%@ include file = "body.jsp" %>
	<%@ include file = "footer.jsp" %> --%>
	
	
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</html>