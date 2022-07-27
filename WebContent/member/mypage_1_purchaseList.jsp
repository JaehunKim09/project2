<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
#big {

	min-height: 100%;
	position: relative;
}

#small {
	padding-bottom: 200px; /* footer의 높이 */
}
#mypage_div{
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

#mypage_div{
margin-left:500px;
}
#mypage_table{
margin-left:500px;
border-collapse:collapse;
}
#product_info{
margin-left:500px;
}
#mypage_table th {
border: 1px solid gray;
}
#mypage_table th:hover {
	background: black;
	color: white;
}
.a_tag2{
text-decoration:none;
color:black;
}
.a_tag2:hover{
background:black;
color:white;
}
#product_info_table{
width:1200px;
height:130px;
}
#product_info_table td{
height:200px;
text-align:center;
border-bottom:1px solid black
}
</style>
</head>
<body>
<div id="big">
	<div id="small">
		<jsp:include page="../include/header_notlogin.jsp"/>
 	<hr size="2" style="color:lightgray">
		<div id="mypage_div">
		<br><span id="mypage_span">마이페이지
		</span>&nbsp;&nbsp;&nbsp;
		<b>${sessionScope.loginUser.id}(${sessionScope.loginUser.name})</b>회원님을 위한 마이페이지 입니다.
		</div>
		
		<div id="mypage_table_div">
		<table id="mypage_table">
			<tr>
				<th><a href="ShopServlet?command=mypage_1&id=${sessionScope.loginUser.id}" class="a_tag2">구매내역</a></th>
				<th><a href="ShopServlet?command=mypage3_1_moveAction&id=${sessionScope.loginUser.id}" class="a_tag2">회원정보</a></th>
				<th><a href="ShopServlet?command=mypage_5&id=${sessionScope.loginUser.id}" class="a_tag2">내 구매후기</a></th>
				<th><a href="ShopServlet?command=mypage_6&id=${sessionScope.loginUser.id}" class="a_tag2">내 문의내역</a></th>
		</table>
		</div>
		<div id="product_info">
		<hr style="width:1200px; float:left;">
		<table style="border-collapse:collapse;" id="product_info_table">
			<tr style="background:lightblue">
				<th>주문번호(주문일)</th>
				<th>Image</th>
				<th>상품명(상품번호) / 간략설명</th>
				<th>수량</th>
				<th>결제금액</th>
				<th>&nbsp;&nbsp;&nbsp;관리&nbsp;&nbsp;&nbsp;</th>
			</tr>
			
			<c:forEach items="${mylist}" var="list">
			<tr>
				<td>2022.${list.oNum}<br>(<fmt:formatDate value="${list.oDate}"></fmt:formatDate>)</td>
				<td><a href="ShopServlet?command=product_detail&pNum=${list.pNum}"><img src="${list.pImg}"></a></td>
				<td><a href="ShopServlet?command=product_detail&pNum=${list.pNum}">${list.pName}</a>(${list.pNum})<br>${list.pShortInfo}</td>
				<td>${list.cnt}</td>
				<td>${list.oPrice}</td>
				<td><a href="ShopServlet?command=mypage_2&pNum=${list.pNum}">구매후기 작성</a><br><br></td>
			</tr>
			</c:forEach>
		</table>
		</div>					
		</div>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div><!-- big -->

</body>
</html>