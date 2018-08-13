<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
	<jstl:if test='${sessionScope.username != null }'>
		<div>
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div>
			User Credentials not valid <a href="login.jsp">Click here</a> to re
			login
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</jstl:if>
	<jstl:if test='${sessionScope.username == null }'>
		<jsp:include page="notfound.jsp"></jsp:include>
	</jstl:if>
</body>
</html>