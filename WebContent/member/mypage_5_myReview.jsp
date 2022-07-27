<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
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

#product_Info {
	padding:0;
	margin-left: 31%;
	width:930px;
}

#mypage_span {
	font-size: 30px;
	font-weight: bold;
}
#mypage_div{
position:absolute;
left:600px;
border:1px solid black;
width:900px;
height:80px;
text-align:left;
}
#mypage_table{
position:absolute;
top:80px;
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
#product_info_table{
border-bottom:1px solid black;
width:900px;
height:130px;
left:600px;
}
#product_info_table td{
height:200px;
text-align:center;
}
.img_myreview{
width:150px;
height:150px;
margin:0;
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
			</div><!-- header -->
			
		<hr size="2" style="color: lightgray">
			<div id="mypage_div">
				<br>
				<span id="mypage_span">마이페이지 </span>&nbsp;&nbsp;&nbsp; 
				<b>${sessionScope.loginUser.id}(${sessionScope.loginUser.name})</b>회원님을 위한 마이페이지 입니다.
				<table id="mypage_table">
					<tr>
				<th><a href="ShopServlet?command=mypage_1&id=${sessionScope.loginUser.id}" class="a_tag2">구매내역</a></th>
				<th><a href="ShopServlet?command=mypage3_1_moveAction&id=${sessionScope.loginUser.id}" class="a_tag2">회원정보</a></th>
				<th><a href="ShopServlet?command=mypage_5&id=${sessionScope.loginUser.id}" class="a_tag2">내 구매후기</a></th>
				<th><a href="ShopServlet?command=mypage_6&id=${sessionScope.loginUser.id}" class="a_tag2">내 문의내역</a></th>
				</table>
			</div>
			<br><br><br><br><br><br>
			<div id="product_Info">
		<hr>
		<table id="product_info_table">
		
			<tr style="background:skyblue">
				<th colspan="2">상품명</th>
				<th style="width:400px">상품평</th>
				<th style="width:150px">작성일</th>
			</tr>
		<c:forEach items="${rList}" var="review">
			<tr>
				<td><img src="${review.pImg}" class="img_myreview"></td>
				<td>${review.pName}</td>
				<td>${review.content}</td>
				<td><fmt:formatDate value="${review.rDate}"></fmt:formatDate></td>
			</tr>
		</c:forEach>
		</table>
			</div>						
		</div>
		<!-- small -->
		<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include></div>
	</div>
	<!-- big -->
</body>
</html>