
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<!-- header, footer 모듈화입니다. 수정은 static파일 내부에서 진행 -->
	<%@ include file="../../static/header.jsp" %>
	
	<jsp:include page="../../static/homemain.html" flush="true" />
	
	
	<%@ include file="../../static/footer.jsp" %>
	
	
</body>
</html>