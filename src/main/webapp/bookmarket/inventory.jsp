<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, com.dto.*, com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고</title>
</head>
<body>
<jsp:include page = "header.jsp" flush = "false"/>
	<%!
		String greeting = "재고 관리";
	%>
	
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class = "container-fluid py-5">
			<h1 class = "display-5 fw-bold"><%=greeting %></h1>
			<p class = "col-md-8 fs-4">Inventory control &nbsp;</p>
		</div>
	</div>

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
				<p><%= book.getBookId() %></p>
				<p><%= book.getPublisher() %></p>
				<p><%= book.getUnitsInStock() %></p>
				
				<form name = "stockControl" action = "./processAddBook.jsp" method = "post">

					<label class = "col-sm-2">재고수</label>
						<div class = "h-100 p-2">
							<input type = "text" name = "unitsInStock" class = "form-control">
							<button>등록</button>
							<button>+</button>
							<button>-</button>
						</div>
				</form>
				
			</div>
		</div>
		<% } %>
		<jsp:include page = "footer.jsp" flush = "false"/>
		
</div>
</body>
</html>