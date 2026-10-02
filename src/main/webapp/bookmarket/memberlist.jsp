<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, com.dto.*, com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>

<jsp:include page = "header.jsp" flush = "false"/>

<%!
		String greeting = "회원 목록";
	%>
<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class = "container-fluid py-5">
			<h1 class = "display-5 fw-bold"><%=greeting %></h1>
			<p class = "col-md-8 fs-4">MemberList &nbsp; <a href = "./addMember.jsp" class = "btn btn-light" role = "button">회원가입 &raquo;</a></p>
		</div>
	</div>
	
	
	
	<%--	BookRepository bookDAO = new BookRepository();
			위에 쓴 것과 같은 역할--%>
	<%
		MemberRepository memberDAO = MemberRepository.getInstance();
		ArrayList<Member> memberList = memberDAO.getMemberList();
	%>

	<div class = "row align-items-md-stretch text-center">
		<%
			for(int i = 0; i < memberList.size(); i++){
				Member member = memberList.get(i);				
		%>
		<div class = "col-md-4">
			<div class = "h-100 p-2">
				<h5><b><%= member.getUserSeq() %></b></h5>
				<p><%= member.getId() %> </p>
				<p><%= member.getName() %> </p>
				<p><%= member.getEmail() %></p>
				<p><%= member.getTel() %>
				<p><a href = "./member.jsp?userSeq=<%=member.getUserSeq() %>" class = "btn btn-secondary" role = "button">상세정보 &raquo;</a></p> 
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
</html>