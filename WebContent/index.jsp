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

#big {
	min-height: 100%;
	position: relative;
}

#small {
	padding-bottom: 200px; /* footer의 높이 */
}r

#banner {
	position: absolute;
	margin: 0;
	width: 100%;
	height: 300px;
	top: 210px;
	border: 1px solid black;
}

.product {
	display: inline-block;
	width: 300px;
	height: 300px;
	border: 1px solid black;
	top: 500px;
	left: 60px;
	bottom: 500px;
	margin-right: 40px;
}

#product {
	position: absolute;
	top: 560px;
	left: 280px;
}
#a_container {
	padding-top: 400px;
	margin-left: 15%;
}
</style>
</head>
<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="include/header_notlogin.jsp"></jsp:include>
			</div>

			<div id="banner">
				<img src="..."> 여기는 배너이미지 넣는 곳.
			</div>

			<div id="product">*추천 상품</div>

			<div id="a_container">
				<div class="product">
					<img class="product"
						src="https://image.msscdn.net/images/goods_img/20200123/1280017/1280017_2_500.jpg?t=20200820161743">
					상품1
				</div>

				<div class="product">
					<img class="product"
						src="https://image.msscdn.net/images/goods_img/20210907/2113554/2113554_3_500.jpg?t=20220405095359">
					상품2
				</div>
				<div class="product">
					<img class="product"
						src="https://image.msscdn.net/images/goods_img/20210428/1926895/1926895_2_500.jpg?t=20220510163120">
					상품3
				</div>
				<div class="product">
					<img class="product"
						src="https://image.msscdn.net/images/goods_img/20201117/1692628/1692628_5_125.jpg">
					상품4
				</div>
			</div>
		</div>
		<!-- small -->
		<div id="footer">
			<jsp:include page="include/footer.jsp"></jsp:include></div>
	</div>
	<!-- big -->
</body>
</html>