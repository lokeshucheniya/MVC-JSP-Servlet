<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Not Found</title>
</head>

<body>
	<jstl:if test='${sessionScope.user != null }'>
		<div>
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div align="center">
			<h2>Account not found!!</h2>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</jstl:if>
	<jstl:if test='${sessionScope.user == null }'>
		<jstl:redirect url="notfound.jsp"></jstl:redirect>
	</jstl:if>
</body>
</html>