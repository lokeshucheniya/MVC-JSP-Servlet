<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Account</title>
</head>

<body>
	<jstl:if test='${sessionScope.username != null }'>
		<div>
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div id="check" align="center">
			<form id="search" action="searchAcc.app">
				<table>
					<tr>
						<td>Enter Account Number:</td>
						<td><input type="number" id="accNo" name="accNo"
							required="required"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Search"></td>
					</tr>
				</table>
			</form>
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