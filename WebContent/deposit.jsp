<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit Page</title>
</head>
<body>
	<jstl:if test='${sessionScope.username != null }'>
		<div>
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div align="center">
			<form id="deposit" action="deposit.app">
				<table>
					<tr>
						<td>Enter account Number:</td>
						<td><input type="number" name="accNo" min=101
							required="required"></td>
					</tr>
					<tr>
						<td>Enter amount to be withdrawn:</td>
						<td><input type="number" name="depositamount" min="0"
							required="required"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Deposit"></td>
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