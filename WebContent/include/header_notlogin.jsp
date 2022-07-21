<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#p_container_header{
position:relative;
width:1500px;
height:200px;
margin:0 auto;
}
#logo{
position:absolute;
border:1px solid red;
weight:70px;
height:50px;
left:150px;
top:30px;
}
#login{
position:absolute;
right:0;
top:0;
font-size:15px;
}
.a_tag{
text-decoration:none;
color:black;
}
.a_tag:hover{
color:red;
}
#input{
font-size: 16px;
width:325px;
padding:5px;
border:0px;
outline:none;
float:left;
}
#input_but{
width:50px;
height:28px;
border:0px;
background:#1b5ac2;
outline:none;
float:right;
color:#ffffff;
}
#search{
position:absolute;
border: 1px solid #1b5ac2;
background:#ffffff;
left:600px;
top:40px;
}
.mypage{
position:absolute;
border:1px solid red;
height:50px;
}
.my{
left:1200px;
top:30px;
}
.jang{
left:1370px;
top:30px;
}
#category_container{
position:absolute;
left:400px;
bottom:0px;
}
#category_table{
border-spacing:10px;
text-align:center;
width:800px;
}
#category_table td{
width:100px;
height:50px;
margin-right:20px;
}
img{
width:100%;
height:100%;
}
</style>
</head>
<body>
<div id="p_container_header">
	<div id="logo">
		<a href="ShopServlet?command=index" class="a_tag"><img src="#">로고</a>
	</div>
	
	<div id="login">
	<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
				<a href="ShopServlet?command=login_form" class="a_tag">로그인</a>

				<a href="ShopServlet?command=join_form" class="a_tag">회원가입</a>
			</c:when>
	<c:otherwise>
			 	${sessionScope.loginUser.name}님(${sessionScope.loginUser.id})
				<a href="ShopServlet?command=logout">로그아웃</a>
	</c:otherwise>
	</c:choose>
	</div>
	
	<div id="search">
		<input id="input" type="text" placeholder="검색어 입력"><button id="input_but">검색</button>
	</div>
	
	<div class="mypage my">
	<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
				<a href="ShopServlet?command=login_form" class="a_tag"><img src="#">마이페이지</a>
			</c:when>
	<c:otherwise>
			<a href="ShopServlet?command=mypage_1" class="a_tag"><img src="#">마이페이지</a>
	</c:otherwise>
	</c:choose>
<!-- <img src="#">마이페이지Image -->
	</div>
	<div class="mypage jang">
		<img src="#">고객센터Image
	</div>
	
	<div id="category_container">
		<table id="category_table">
			<tr><!-- 이미지와 카테코리명에 동일한 주소 줄 것! -->
				<td><a href="ShopServlet?command=category_list&categoryName=outer1" class="a_tag"><img src="https://image.msscdn.net/images/goods_img/20200123/1280017/1280017_2_500.jpg?t=20200820161743"></a></td>
				<td><a href="ShopServlet?command=category_list&categoryName=top2" class="a_tag"><img src="https://image.msscdn.net/images/goods_img/20210907/2113554/2113554_3_500.jpg?t=20220405095359"></a></td>
				<td><a href="ShopServlet?command=category_list&categoryName=pants3" class="a_tag"><img src="https://image.msscdn.net/images/prd_img/20220314/2417216/detail_2417216_11_500.jpg"></a></td>
				<td><a href="ShopServlet?command=category_list&categoryName=training4" class="a_tag"><img src="https://image.msscdn.net/images/goods_img/20190828/1133891/1133891_2_500.jpg?t=20190904173725"></a></td>
				<td><a href="ShopServlet?command=category_list&categoryName=shoes5" class="a_tag"><img src="https://image.msscdn.net/images/goods_img/20160224/311052/311052_3_500.jpg?t=20200416114434"></a></td>
				<td><a href="ShopServlet?command=category_list&categoryName=acc6" class="a_tag"><img src="https://image.msscdn.net/images/goods_img/20190511/1042191/1042191_1_500.jpg?t=20220628145624"></a></td>
			</tr>
			<tr>
				<th><a href="ShopServlet?command=category_list&categoryName=outer1" class="a_tag">아우터</a></th>
				<th><a href="ShopServlet?command=category_list&categoryName=top2" class="a_tag">상의</a></th>
				<th><a href="ShopServlet?command=category_list&categoryName=pants3" class="a_tag">바지</a></th>
				<th><a href="ShopServlet?command=category_list&categoryName=training4" class="a_tag">트레이닝</a></th>
				<th><a href="ShopServlet?command=category_list&categoryName=shoes5" class="a_tag">신발</a></th>
				<th><a href="ShopServlet?command=category_list&categoryName=acc6" class="a_tag">패션소품</a></th>
			</tr>
		</table>
	</div>
</div>
</body>
</html>