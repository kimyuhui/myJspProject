<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, com.dto.*, com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Info</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<%!
		String greeting = "회원 정보";
	%>
	
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class = "container-fluid py-5">
			<h1 class = "display-5 fw-bold"><%=greeting %></h1>
			<p class = "col-md-8 fs-4">MemberInfo</p>
		</div>
	</div>
	
<%
	MemberRepository memberDAO = MemberRepository.getInstance();
	String memberId = request.getParameter("userSeq");
	Member member = memberDAO.getMemberInfo(memberId);
%>

	<div class = "row align-items-md-stretch">
		<div class = "col-md-12">
			<h3><b><%=member.getUserSeq() %></b></h3>
			<p>아이디: <b><%=member.getId() %></b></p>
			<p>비밀번호: <b><%=member.getPwd() %></b></p>
			<p>이름: <b><%=member.getName() %></b></p>
			<p>성별: <b><%=member.getGender() %></b></p>
			<p>생년월일: <b><%=member.getBirth() %></b></p>
			<p>나이: <b><%=member.getAge() %></b></p>
			<p>연락처: <b><%=member.getTel() %></b></p>
			<p>이메일: <b><%=member.getEmail() %></b></p>
			<p>클래스: <b><%=member.getCls() %></b></p>
			<p>발사이즈: <b><%=member.getFootSize() %></b></p>
			
			<p>
				<a href="./memberlist.jsp" class = "btn btn-secondary">회원 목록 &raquo;</a>
			</p>
		
		
		</div>
	
	

<jsp:include page="footer.jsp"/>
</div>
</body>
</html>