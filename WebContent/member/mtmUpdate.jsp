<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="header">
				<jsp:include page="../include/header_notlogin.jsp"></jsp:include>
			</div>
<h1>mtm수정</h1>
${mtm.content}
<div id="footer">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
</body>
</html>