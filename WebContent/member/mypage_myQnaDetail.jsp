<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- 마이페이지 내 문의내역 -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
#mypage_div{
position:absolute;
left:600px;
border:1px solid black;
width:900px;
height:80px;
text-align:left;
}
#mypage_span {
	font-size: 30px;
	font-weight: bold;
}
#mypage_table{
position:absolute;
top:73px;
border-collapse:collapse;
border:1px solid gray;
color:gray;
margin-top:10px;
}
#product_Info {
	padding-top: 50px;
	margin-left: 28%;
}
#mypage_span{
font-size:30px;
font-weight:bold;
}
#mypage_table th:hover {
	background: black;
	color: white;
}
#mypage_table th{
border:1px solid gray;
}
</style>
</head>
<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../include/header_notlogin.jsp"></jsp:include>
			</div>
			<!-- header -->
			<hr size="2" style="color: lightgray">
			<div id="mypage_div">
				<br> <span id="mypage_span">마이페이지 </span>&nbsp;&nbsp;&nbsp; 홍길동
				회원님을 위한 마이페이지 입니다.
				<table id="mypage_table">
					<tr>
						<th>구매내역</th>
						<th>회원정보</th>
						<th>내 구매후기</th>
						<th>내 문의내역</th>
				</table>
		<br><br><br><br><br><br>
		<hr style="width: 900px;">
		<p>분류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>일자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>문의내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>답변내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
			</div>
			
			
	</div><!-- small -->
	<div id="footer">
		<jsp:include page="../include/footer.jsp"></jsp:include></div>
	</div><!-- big -->

</body>
</html>