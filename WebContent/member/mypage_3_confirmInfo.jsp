<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	var frmm = document.frm;
	if(frmm.pw.value.length == 0){
		alert("비밀번호를 입력해 주세요.");
		frmm.id.focus();
		return false;
	}else{
		return true;
	}
}
</script>
<Style>
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
#p_container {
	position: relative;
	width: 1500px;
	height: 100%;
	margin: 0 auto;
	top : 150px;
}
#mypage_div{
position:absolute;
left:600px;
border:1px solid black;
width:900px;
height:80px;
text-align:left;
}
#mypage_span{
font-size:30px;
font-weight:bold;
}
#mypage_table_div{
position:absolute;
bottom:5px;
width:900px;
height:100%;
left:300px;
}
#mypage_table{
position:absolute;
left:300px;
top:300px;
border-collapse:collapse;
border:1px solid gray;
color:gray;
margin-top:10px;
}
#mypage_table th{
border:1px solid gray;
}
#mypage_table th:hover {
	background: black;
	color: white;
}
#loginbox {
	width: 60%;
	height: 10%;
	position: absolute;
	top: 30px;
	left : 0
}
#login1 {
	font-size: 25px;
	position: absolute;
	left: 420px;
	text-align: center;
}
#login2 {
	font-size: 15px;
	position: relative;
	left: 420px;
	top: 40px;
}
#name {
	display: inline-block;
	position: absolute;
	left: 550px;
	top: 170px;
	height: 35px;
	width: 350px;
	border: 1px solid #1b5ac2;
	background: #ffffff;
}
#pw {
	display: inline-block;
	position: absolute;
	left: 550px;
	top: 220px;
	height: 35px;
	width: 350px;
	border: 1px solid #1b5ac2;
	background: #ffffff;
}
span{
	font-size: 12px;
}
#loginbut {
	left: 550px;
	width: 350px;
	height: 35px;
	border: 0px;
	background: #1b5ac2;
	outline: none;
	float: right;
	color: #ffffff;
}
.a_tag2{
text-decoration:none;
color:black;
}
.a_tag2:hover{
background:black;
color:white;
}
</Style>
</head>
<body>

	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../include/header_notlogin.jsp"></jsp:include>
			</div><!-- header -->
			<hr size="2" style="color:lightgray">
			<div id="mypage_div">
		<br><span id="mypage_span">마이페이지
		</span>&nbsp;&nbsp;&nbsp;
		<b>${sessionScope.loginUser.id}(${sessionScope.loginUser.name})</b>회원님을 위한 마이페이지 입니다.
		</div><!-- mypage div -->
		
		<div id="mypage_table_div">
		<table id="mypage_table">
			<tr>
				<th><a href="ShopServlet?command=mypage_1&id=${sessionScope.loginUser.id}" class="a_tag2">구매내역</a></th>
				<th><a href="ShopServlet?command=mypage3_1_moveAction&id=${sessionScope.loginUser.id}" class="a_tag2">회원정보</a></th>
				<th><a href="ShopServlet?command=mypage_5&id=${sessionScope.loginUser.id}" class="a_tag2">내 구매후기</a></th>
				<th><a href="ShopServlet?command=mypage_6&id=${sessionScope.loginUser.id}" class="a_tag2">내 문의내역</a></th>
		</table>
		</div>
		
	<div id="p_container">
		<div id="loginbox">
			<div id="login1">
				<b>본인확인</b>
			</div>
			<div id="login2">
				회원님의 정보를 안전하게 보호하기 위해 비밀번호를 한번 더 입력해주세요.
				<hr align="left" style= width:520px>
			</div>
		</div>
		<form name="frm" method="post" action="ShopServlet?command=mypage3_2_checkAction">
		<div id="name">
			<input id="input" type="text" value="${sessionScope.loginUser.id}" readonly name="id"><br>
			<br>
		</div>
		<div id="pw">
			<input id="input" type="password" placeholder="비밀번호" name="pw"><br>	
			<br>
			<span>*비밀번호는 타인에게 노출되지 않도록 주의하시기 바랍니다.</span>
			<br>
			<br>
			
			<input type="submit" id="loginbut" value="로그인" onclick="return check()"></form>
		</div>
	</div>	
		</div><!-- small -->
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include></div>
	</div><!-- big -->
</body>
</html>









