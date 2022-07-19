<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function join_check(){
	
	var frmm = document.frm;
	
	if(frmm.name.value.length == 0){
		alert("이름을 입력하세요.");
		frmm.name.focus();
		return false;
	}else if(frmm.id.value.length==0){
		alert("아이디를 입력하세요.");
		frmm.id.focus();
		return false;
	}else if(frmm.pw.value.length==0){
		alert("비밀번호를 입력하세요.");
		frmm.pw.focus();
		return false;
	}else if(frmm.name.value.length==0){
		alert("이름을 입력하세요.");
		frmm.name.focus();
		return false;
	}else if(frmm.pw.value != frmm.pwCheck.value){
		alert("비밀번호가 다릅니다.");
		frmm.pwCheck.focus();
		return false;
	}else if(frmm.phone.value.length==0){
		alert("연락처를 입력하세요.");
		frmm.phone.focus();
		return false;
	}else if(frmm.email.value.length==0){
		alert("이메일을 입력하세요.");
		frmm.email.focus();
		return false;
	}else if(frmm.address.value.length==0){
		alert("주소를 입력하세요.");
		frmm.address1.focus();
		return false;
	}else
		frmm.action="ShopServlet?command=join";
		return true;
}
/* email-domain 넣기 및 유효성 검사 */
var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
var email_id =$("#email_id").val();
var email_domain =$("#email_domain").val();
var mail ="";


if(!email_id){
    alert("이메일을 입력해주세요");
  $("#email_id").focus();
  return false;
}
if(!email_domain){
    alert("도메인을 입력해주세요");
  $("#email_domain").focus();
  return false;
}
mail = email_id+"@"+email_domain;
$("#mail").val(mail);  

if(!email_rule.test(mail)){
    alert("이메일을 형식에 맞게 입력해주세요.");
  return false;
}

function setEmailDomain(domain){
      $("#email_domain").val(domain);
}

function sum_Address(){
	var add = document.getElementById("address_kakao");
	add += document.getElementById("address_detail");
	
	return add;
}
</script>
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

#big {
	min-height: 100%;
	position: relative;
}

#small {
	padding-bottom: 200px; /* footer의 높이 */
}

#registerbut {
	left: 550px;
	width: 200px;
	height: 35px;
	border: 0px;
	background: #1b5ac2;
	outline: none;
	color: #ffffff;
}

#id, #pw, #pwcheck, #name, #phone, #join, #address, #address_detail {
	width: 150px;
	height: 45px;
	margin: auto;
}

#email {
	width: 150px;
	height: 80px;
	margin: auto;
}

hr {
	width: 50%;
	background-color: black;
}
#email_id{display:inline-block;}
#email_domain{display:inline-block;}
</style>
</head>

<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../include/header_notlogin.jsp"></jsp:include>
			</div>
			<br> <br> <br> <br> <br>
			<div id="join">
				<span style="font-size: 25px">회원가입</span>
			</div>
			<hr>
	<form name="frm" method="post">
			<div id="name">
				이름 <input type="text" name="name">
			</div>
			<br>
			<div id="id">
				아이디 <input type="text" name="id">
			</div>
			<br>
			<div id="pw">
				비밀번호 <input type="password" name="pw">
			</div>
			<br>
			<div id="pwcheck">
				비밀번호 확인 <input type="password" name="pwCheck">
			</div>
			<br>
			<div id="phone">
				휴대전화 <br> <input type="text" name="phone">
			</div>
			<br>
			<div id="email">
			<input type="text" id="email_id" class="form_w200" value="" placeholder="이메일" maxlength="18" name="email"/> @ 
				<select class="select" title="이메일 도메인 주소 선택" onclick="setEmailDomain(this.value);return false;">
   					<option value="">-선택-</option>
    				<option value="naver.com">naver.com</option>
				    <option value="gmail.com">gmail.com</option>
				    <option value="hanmail.net">hanmail.net</option>
				    <option value="hotmail.com">hotmail.com</option>
				    <option value="korea.com">korea.com</option>
				    <option value="nate.com">nate.com</option>
				    <option value="yahoo.com">yahoo.com</option>
				</select>
			</div>
 				<!--이메일 <input type="text" placeholder="선택입력" name="email">
					<span name="email">@</span>
				<select>
					<option value="choice">선택</option>
					<option value="naver" name="email">naver.com</option>
					<option value="daum" name="email">daum.net</option>
					<option value="nate" name="email">nate.com</option>
					<option value="not_choice">선택 안함</option>
				</select> -->
							
			<div id="address">
				주소 <input type="text" id="address_kakao" readonly>
			</div>
			<br>
			<div id="address_detail">
				상세주소 <input type="text" id="address_detail">
			</div>
			<br><br>
			<div id="join">
				<input type="submit" id="registerbut" value="가입하기">
			</div>
	</form>
			<br>
			<!-- footer -->
		</div>
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_kakao")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//카카오 지도 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("address_kakao").value = data.address; // 주소 넣기
											document
													.querySelector(
															"input[name=address_detail]")
													.focus(); //상세입력 포커싱
										}
									}).open();
						});
	}
</script>
</html>