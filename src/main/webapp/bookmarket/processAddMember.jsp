<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.dto.Member" %>
<%@ page import = "com.dao.MemberRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
		String name = request.getParameter("userName");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String birth = request.getParameter("birth");
		String footSize = request.getParameter("foot");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String email1 = request.getParameter("frontMail");
		String email2 = request.getParameter("backMail");
		String cls = request.getParameter("cls");
		
	
		if(cls.equals("N")) {
			cls = "일반 회원";
		} else if(cls.equals("V")) {
			cls = "VIP";
		}
		
		String tel = phone1 + "-" + phone2 + "-" + phone3;
		String email = email1 + "@" + email2;
		
		int userAge = Integer.valueOf(age);
		int userFoot = Integer.valueOf(footSize);
		
		MemberRepository dao = MemberRepository.getInstance();
		Member newMember = new Member();
		newMember.setId(id);
		newMember.setPwd(pwd);
		newMember.setName(name);
		newMember.setGender(gender);
		newMember.setBirth(birth);
		newMember.setAge(userAge);
		newMember.setFootSize(userFoot);
		newMember.setTel(tel);
		newMember.setEmail(email);
		newMember.setCls(cls);
		
		dao.addMember(newMember);
		response.sendRedirect("memberlist.jsp");
		
	%>
	
	

</body>
</html>