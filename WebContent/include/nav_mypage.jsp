<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* #mypage_div{
border:1px solid black;
width:900px;
height:80px;
text-align:left;
}
#mypage_span{
font-size:30px;
font-weight:bold;
}
#mypage_div{
margin-left:500px;
}
#mypage_table{
margin-left:500px;
border-collapse:collapse;
}
#mypage_table th {
border: 1px solid gray;
}
#mypage_table th:hover {
	background: black;
	color: white;
} */
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
<nav>
	<hr size="2" style="color:lightgray">
	<jsp:include page="../include/nav_mypage.jsp"/>
	
		<%-- <div id="mypage_div">
		<br><span id="mypage_span">마이페이지
		</span>&nbsp;&nbsp;&nbsp;
		<b>${sessionScope.loginUser.id}(${sessionScope.loginUser.name})</b>회원님을 위한 마이페이지 입니다.
		</div>
		
		<div id="mypage_table_div">
		<table id="mypage_table">
			<tr>
				<th><a href="ShopServlet?command=mypage_1" class="a_tag2">구매내역</a></th>
				<th><a href="ShopServlet?command=mypage3_1_moveAction" class="a_tag2">회원정보</a></th>
				<th><a href="ShopServlet?command=mypage_5" class="a_tag2">내 구매후기</a></th>
				<th><a href="ShopServlet?command=mypage_6" class="a_tag2">내 문의내역</a></th>
		</table>
		</div> --%>
</nav>
</body>
</html>