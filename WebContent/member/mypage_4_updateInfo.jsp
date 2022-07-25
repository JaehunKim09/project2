<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
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
#big {
	min-height: 100%;
	position: relative;
}

#small {
	padding-bottom: 200px; /* footer의 높이 */
}
#mypage_table{
border-collapse:collapse;
}
#mypage_table_div {
	margin-top:83px;
	margin-left: 597px;
	border-collapse: collapse;
	color: gray;
	width: 330px;
}

#mypage_table th:hover{
color:red;
}

#mypage_table th {
	border: 1px solid gray;
}

#wrapper {
	display: table;
	margin-left: 30%;
	margin-top: 20px;
}

#main {
	margin-left: 200px;
}

#checkbut {
	width: 100px;
	margin: auto;
	display: block;
}
.a_tag2{
text-decoration:none;
color:black;
}
.a_tag2:hover{
background:black;
color:white;
}
</style>
</head>
<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../include/header_notlogin.jsp"></jsp:include>
			</div>

		<div id="mypage_div">
		<br><span id="mypage_span">마이페이지
		</span>&nbsp;&nbsp;&nbsp; 
		<b>${sessionScope.loginUser.id}(${sessionScope.loginUser.name})</b>회원님을 위한 마이페이지 입니다.
		</div><!-- mypage div -->
			<div id="mypage_table_div">
				<table id="mypage_table">
					<tr>
						<th><a href="ShopServlet?command=mypage_1&id=${sessionScope.loginUser.id}" class="a_tag2">구매내역</a></th>
						<th><a href="ShopServlet?command=mypage_3&id=${sessionScope.loginUser.id}" class="a_tag2">회원정보</a></th>
						<th><a href="ShopServlet?command=mypage_5&id=${sessionScope.loginUser.id}" class="a_tag2">내 구매후기</a></th>
						<th><a href="ShopServlet?command=mypage_6&id=${sessionScope.loginUser.id}" class="a_tag2">내 문의내역</a></th>
					</tr>
				</table>
			</div>
			<br>
			<div id="wrapper">
				<div id="main">
					<div id="name">
						이름 <input type="text" style="margin-left: 73px">
					</div>
					<br>
					<div id="id">
						아이디 <input type="text" style="margin-left: 58px">
					</div>
					<br>
					<div>
						<div id="pw">
							비밀번호 <input type="password" style="margin-left: 43px">
						</div>
					</div>
					<br>
					<div>
						<div id="pwcheck">
							비밀번호 확인 <input type="password" style="margin-left: 5px">
						</div>
					</div>
					<br>
					<div id="phone">
						휴대전화 <input type="text" placeholder="'-'없이 입력해주세요"
							style="margin-left: 43px">

					</div>
					<br>
					<div id="email">
						이메일 <input type="text" placeholder="선택입력"
							style="margin-left: 57px"> <select name="email">
							<option value="choice">선택</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.net</option>
							<option value="nate">nate.com</option>
							<option value="not_choice">선택 안함</option>
						</select>
					</div>
					<br>
					<div id="address">
						주소 <input type="text" id="address_kakao" name="address"
							style="margin-left: 73px" readonly />
					</div>
					<br>
					<div id="address_detail">
						상세주소 <input type="text" name="address_detail"
							style="margin-left: 41px" />
					</div>
				</div>
			</div>
			<br>
			<br>
			<button id="checkbut">회원정보수정</button>
		</div>

		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include></div>
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