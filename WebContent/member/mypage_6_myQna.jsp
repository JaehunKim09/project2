<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*" %>
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
	padding-bottom: 200px; /* footer�� ���� */
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
#mypage_table th:hover {
	background: black;
	color: white;
}
#mypage_table th{
border:1px solid gray;
}
#span{
font-size: 25px;
}
#product_Info {
	padding-top: 30px;
	margin-left: 600px;
}
#btn {
	margin-left: 600px;
	height: 50px;
	width: 200px;
	border: 0;
}
#question_table1{
width:800px;
height:50px;
}
#question_table2{
width:700px;
height:50px;
}
</style>
</head>
<body>
<form name="formm" method="post">
<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../include/header_notlogin.jsp"></jsp:include>
			</div>
			<!-- header -->
			<hr size="2" style="color: lightgray">
			<div id="mypage_div">
				<br>
				<span id="mypage_span">���������� </span>&nbsp;&nbsp;&nbsp; ${sessionScope.loginUser.id}ȸ������ ����
				���������� �Դϴ�.
				<table id="mypage_table">
					<tr>
						<th><a href="ShopServlet?command=mypage_1&id=${sessionScope.loginUser.id}">���ų���</a></th>
						<th>ȸ������</th>
						<th>�� �����ı�</th>
						<th><a href="ShopServlet?command=mypage_6&id=${sessionScope.loginUser.id}">�� ���ǳ���</a></th>
				</table>
			</div>
			<br><br><br><br><br>
			<div id="product_Info">
			<span id="span">���ǳ���&nbsp;&nbsp;&nbsp; </span>
				<input type='button' class='btn' name='btn' value='�����ϴ�����' onclick="location.href='ShopServlet?command='"> 
				<input type='button' class='btn' name='btn' value='1:1�����ϱ�' onclick="location.href='ShopServlet?command=ask'">
				<input type="button" class="btn" name='btn' value="������" onclick="location.href='ShopServlet?command=adminMtmList&id=${sessionScope.mtm.loginUser}'">
			<br><br>
			
			<table id="question_table1">
		<tr style="background:lightblue">
			<th colspan="2">��ȣ</th>
			<th colspan="2">����</th>
			<th colspan="2">����</th>
			
		</tr>
		<c:forEach items="${mtmVO}" var="mtmVo">
		<tr>	
			<th colspan="2">${mtmVo.mNum}</th>
			<th colspan="2"><fmt:formatDate value="${mtmVo.mDate}" type="date"/></th>
			<th colspan="2"><a href="ShopServlet?command=mypage_7&mNum=${mtmVo.mNum}">${mtmVo.title}</a></th>
			
		</tr>
		</c:forEach>
		</table>
		<br><br>
				<table id="question_table2">
		<tr style="background:lightblue">
			<th colspan="2">����</th>
			<th colspan="2">����</th>
			<th colspan="2">�亯����</th>
		</tr>
		<tr>	
			<th colspan="2">1������</th>
			<th colspan="2">2</th>
			<th colspan="2">3</th>
			</tr>
		</table>
			</div>
</div><!-- small -->
<div id="footer">
			<jsp:include page="../include/footer.jsp"></jsp:include></div>
</div><!-- big -->
</form>
</body>
</html>