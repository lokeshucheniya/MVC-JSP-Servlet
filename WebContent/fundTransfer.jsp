<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fund Transfer</title>

</head>
<body>
	<jstl:if test='${sessionScope.username != null }'>
		<div>
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div align="center">
			<p>${requestScope.reciever}</p>
			<p>received</p>
			<p>${requestScope.amount}</p>
			<p>from</p>
			<p>${requestScope.sender}</p>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</jstl:if>
	<jstl:if test='${sessionScope.username == null }'>
		<jstl:redirect url="notfound.jsp"></jstl:redirect>
	</jstl:if>
</body>
</html>