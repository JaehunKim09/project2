<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	width : 100%;
}
table, th, td{
	border : 1px solid gray;
}
#small {
	padding-bottom: 200px; 
	margin-left:10%;
	padding-top : 100px;
}
</style>
</head>
<body>
<jsp:include page="../include/admin_header.jsp"/>
<div id = small>

	<table>
	<thread>
		<tr>
			<th>상품번호</th>
			<th>아이디</th>
			<th>리뷰번호</th>
			<th>내용</th>
			<th>리뷰 이미지</th>
			<th>작성일자</th>
			<th>비고</th>
		</tr>
	</thread>

		<c:forEach items="${review}" var="review">
			<tr>
				<td>${review.pNum}</td>
				<td>${review.id}</td>
				<td>${review.rNum}</td>
				<td>${review.content}</td>
				<td><img src="${review.rImg}">이미지</td>
				<td><fmt:formatDate value="${review.rDate}" /></td>
				<td class="td"><a
					href="ShopServlet?command=admin_review_delete&rNum=${review.rNum}"
					class="delete">삭제</a>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>