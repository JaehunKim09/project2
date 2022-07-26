<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정 및 삭제</title>
<script>
function go_update(pNum){
	var n = pNum;
	var p = pPrice;
	document.frm.submit();
	document.frm.action="ShopServlet?command=admin_productUpdate&pNum="+n;
	
}
function go_delete(pNum){
	var n = pNum
	document.frm.submit();
	document.frm.action="ShopServlet?command=admin_productDelete&pNum="+n;
}
</script>
<style>
html,body{
margin:0;
padding:0;
height:100%;
}
#big{
position:relative;
min-height:100%;
}
#small{
margin-left:180px;
padding-bottom:200px;
}
.product_img{

width:300px;
height:270px;
}
.div_img{

display:inline-block;
margin-left:400px;
margin-right:50px;
padding-top:20px;
}
#product_detail{
position:absolute;
width:400px;
height:300px;
right:550px;
top:220px;
}
#product_name{
font-weight:bold;
font-size:20px;
}
#purchase_button{
background-color:black;
color:white;
width:100px;
height:30px;
}
#option_tab{
border-collapse:collapse;
}
#product_price{
top:85px;
position:absolute;
width:200px;
height:20px;
left:190px;
font-weight:bold;
color:red;
size:20px;
}
p{
font-size:13px;
}
ul li{
font-size:13px;
}
#details{
margin-left:400px;
border:2px solid gray;
width:900px;
height:440px;
text-align:center;
}
#price_font{
color:red;
font-weight:bold;
}
.go_review{
font-size:14px;
border:1px solid black;
}
</style>
</head>
<body>

<div id="big">
<jsp:include page="../include/admin_header.jsp"></jsp:include>
<div id="small">
<form name="frm" method="post">
	
	<div class="product_img div_img">
		<img class="product_img" src="${product.pImg}"><br>
		<div id="product_option">
			[옵션선택]<br>
	수량 	<input type="number" name="cnt" value="1" style="text-align:center; width:50px;"/>
	<hr>
	<table>
		<tr>
			<td width="150">상품 가격</td>
			<td width="230" align="right"><span id="price_font"><fmt:formatNumber value="${product.pPrice}" type="currency" /></span></td>
		</tr>
	</table>
	</div>
	</form>
	<br>
		<div align="right">
			<input id="purchase_button" type="submit" value="상품정보 수정"
			onclick="go_update(${product.pNum})">
			<input id="purchase_button" type="submit" value="상품정보 삭제"
			onclick="go_delete(${product.pNum})">
		</div>
		
	</div>
	<div id="product_detail">
	상품명 : <input type="text" name="pName" value="${product.pName}">
	가격  : <input type="text" name="pPrice" <fmt:formatNumber value="${product.pPrice}" type="number"/>>
	</div>
	<br><br><br><br><br>
	
	<article id="details">
		상세정보<br>
		<textarea name="pDetailInfo" value="${product.pDetailInfo}"></textarea>
	</article>
	<div id="footer">
		<jsp:include page = "../include/footer.jsp"></jsp:include>
	</div>
	
</div>
</body>
</html>