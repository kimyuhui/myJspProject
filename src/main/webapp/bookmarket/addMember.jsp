<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, com.dto.*, com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
</head>
<body>
<jsp:include page = "header.jsp"/>
<%!
		String greeting = "회원등록";
	%>
	
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
		<div class = "container-fluid py-5">
			<h1 class = "display-5 fw-bold"><%=greeting %></h1>
			<p class = "col-md-8 fs-4">AddMember &nbsp; &nbsp; <a href = "./memberlist.jsp" class = "btn btn-light" role = "button">뒤로가기 &raquo;</a></p>
		</div>
	</div>
	
	<div class = "row align-items-md-stretch text-justify">
	
	<div class = "row align-items-md-stretch">
		<form name = "newMember" action = "./processAddMember.jsp" method = "post">

			<div class = "mb-3 row">
				<label class = "col-sm-2">아이디</label>
				<div class = "col-sm-3">
					<input type = "text" name = "userId" class = "form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">비밀번호</label>
				<div class = "col-sm-3">
					<input type = "password" name = "userPwd" class = "form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">이름</label>
				<div class = "col-sm-3">
					<input type = "text" name = "userName" class = "form-control">
				</div>
			</div>
			<div class = "mb-3 row">
				<label class = "col-sm-2">성별</label>
				<div class = "col-sm-5">
					<input type = "radio" name = "gender" value = "남성"> 남성
					<input type = "radio" name = "gender" value = "여성"> 여성
				</div>
			</div>


			<div class="mb-3 row">
   				<label class="col-sm-2 col-form-label">연락처</label>
 				<div class="col-sm-6">
       				<div class="input-group">
            			<select name="phone1" class="form-select">
                			<option value="010">010</option>
                			<option value="011">011</option>
                			<option value="012">012</option>
                			<option value="017">017</option>
                			<option value="019">019</option>
            			</select>

            			<span class="input-group-text">-</span>

            			<input type="text" name="phone2" class="form-control">

            			<span class="input-group-text">-</span>

            			<input type="text" name="phone3" class="form-control">
        			</div>
    			</div>
			</div>	
			
			<div class="mb-3 row">
   				<label class="col-sm-2 col-form-label">이메일</label>

    			<div class="col-sm-6">
       				<div class="input-group">
            			<input type="text" name="frontMail" class="form-control">

            			<span class="input-group-text">@</span>

            			<select name="backMail" id = "backMail" class="form-select" style = "display: block;">
                			<option value="naver">naver.com</option>
               				<option value="daum">daum.net</option>
                			<option value="gmail">gmail.com</option>
                			<option value="hotmail">hotmail.com</option>
                			<option value="other">직접 입력</option>
            			</select>
            			
            			<input type = "text" name = "customMail" id = "customMail" class = "form-control" placeholder = "입력" style = "display: none;">
            			
            			<script>
            				document.getElementById("backMail").addEventListener ("change", function() {
            					if(this.value === "other") {
            						document.getElementById("customMail").style.display = "block";
            						document.getElementById("backMail").style.display = "none";
            					} else {
            						document.getElementById("customMail").style.display = "none";
            						document.getElementById("backMail").style.display = "block";
            					}
            					
            				});
            			
            			</script>
            			
        			</div>
    			</div>
			</div>
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">생년월일</label>
				<div class = "col-sm-3">
					<input type = "date" id = "ageCalc" name = "birth" class = "form-control">
				</div>
			</div>
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">나이</label>
				<div class = "col-sm-3">
					<input type = "text" id = "age" name = "age" class = "form-control">
				</div>
			</div>
			
			<script>
			document.getElementById("ageCalc").addEventListener("change", function() {

			    const birth = new Date(this.value);
			    const today = new Date();

			    let age = today.getFullYear() - birth.getFullYear();

			    if (today.getMonth() < birth.getMonth() || (today.getMonth() === birth.getMonth() && today.getDate() < birth.getDate())) {
			        age--;
			    }

			    document.getElementById("age").value = age;
			});
			</script>
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">클래스</label>
				<div class = "col-sm-3">
					<select name = "cls" class="form-select">
						<option value = "N">N</option>
						<option value = "V">V</option>
					</select>
				</div>
			</div>
			
			
			<div class = "mb-3 row">
				<label class = "col-sm-2">발 사이즈</label>
				<div class = "col-sm-3">
					<select name = "foot" class="form-select">
						<option value = "220">220</option>
						<option value = "230">230</option>
						<option value = "240">240</option>
						<option value = "250">250</option>
						<option value = "260">260</option>
						<option value = "270">270</option>
						<option value = "280">280</option>
						<option value = "290">290</option>
						<option value = "300">300</option>
					</select>
				</div>
			</div>
			<br>
			<div class = "mb-3 row">
				<div class = "col-sm-offset-2 col-sm-10">
					<input type = "submit" class = "btn btn-primary" value = "등록" onclick = "return confirm('등록하시겠습니까?');">
				</div>
			</div>
		</form>
	</div>
	
	
	
<jsp:include page = "footer.jsp"/>
</div>


</body>
</html>