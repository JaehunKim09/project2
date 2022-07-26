<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>관리자mtm!!!</h1>
<form name="formm" method="post">
<table border="1px" style="border-collapse: collapse;">

	<tr>
		<th>아이디</th><th>제목</th><th>내용</th><th>리플</th><th>일자</th>
	</tr>
	<c:forEach items="${mtm}" var="mtmList">
	<tr>
		<td>${mtmList.id}</td>
		<td><a href="ShopServlet?command=Admin_mtm_one_list&mNum=${mtmList.mNum}">${mtmList.title}</a></td>
		<td>${mtmList.content}</td>
		<td>${mtmList.reply}</td>
		<td>${mtmList.mDate}</td>
	</tr>
	
</c:forEach>
<%-- <a href="ShopServlet?command=mypage_7&mNum=${mtmVo.mNum}">${mtmVo.title}</a> --%>
</table>
</form>
</body>
</html>