<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<script type="text/javascript">
function check() {
		if (f.me_id.value == "") {
			alert("회원아이디를 입력해주세요");
			return f.me_id.focus();
		}
		if(f.me_pass.value == ""){
			alert("회원비밀번호를 입력해주세요");
			return f.me_pass.focus();
		}
		if(f.me_name.value == ""){
			alert("회원이름를 입력해주세요");
			return f.me_name.focus();
		}
		if(f.gender[0].checked == false && f.gender[1].checked == false){
			alert("성별을 입력해주세요");
			return f.gender.focus();
		}
		if(f.birth.value == ""){
			alert("회원비밀번호를 입력해주세요");
			return f.birth.focus();
		}
		if(f.address.value == ""){
			alert("회원비밀번호를 입력해주세요");
			return f.address.focus();
		}
		if(f.tel.value == ""){
			alert("회원비밀번호를 입력해주세요");
			return f.tel.focus();
		}
		f.submit();
}
function rewrite() {
	f.reset();
	f.me_id.focos();
}
</script>


<body>
	<%@ include file="header_3.jsp"%>
	<section>
		<div>
			<h2>회원등록</h2>
		</div>

	<form action="insertPro_9.jsp" method="post" name="f">

	<table border="1" width="600" style="margin: 0 auto">

	<tr>
		<th>회원아이디</th>
		<td><input type="text" name="me_id" value="" size="10"
			maxlength="12"></td>
	</tr>

	<tr>
		<th>회원비밀번호</th>
		<td><input type="password" name="me_pass" value="" size="11"
			maxlength="15"></td>
	</tr>

	<tr>
		<th>회원이름</th>
		<td><input type="text" name="me_name" value="" size="10"
			maxlength="20"></td>
	</tr>

	<tr>
		<th>성별</th>
		<td>
		&nbsp;&nbsp;<label><input type="radio" name="gender" value="M" ></label>남
		&nbsp;&nbsp;<label><input type="radio" name="gender" value="F" ></label>여
		</td>
	</tr>

	<tr>
		<th>생년월일</th>
		<td><input type="text" name="birth" value="" size="10"
			maxlength="10" placeholder="(예)1999-10-10"></td>
	</tr>

	<tr>
		<th>주소</th>
		<td><input type="text" name="address" value="" size="10"
			maxlength="100"></td>
	</tr>

	<tr>
		<th>전화번호</th>
		<td><input type="text" name="tel" value="" size="10"
			maxlength="13"></td>
	</tr>


	<tr>
		<th colspan="2">
			<input type="submit" value="회원등록" size="5" onclick="check(); return false">
			<input type="button" value="다시쓰기" size="5" onclick="rewrite();">
		</th>	
	</tr>

	</table>
	
	</form>
	
</section>
 <%@ include file= "footer_4.jsp"%>  
</body>
</html>