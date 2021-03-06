<%@page import="com.beans.Component"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dash-Board</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

.spacer
{
    width: 100%;
    height: 95px;
}

html, body {
	height: 100%;
	min-width: 1080px;
	min-height: 600px;
	margin: 0px
}
</style>
<script>
	function deleteComponent(param) {
		if (confirm("Are you sure you want to delete..?")) {
			window.location.href = "./DeleteComponent" + "?component_ID="
					+ param;
		} else {

		}
	}
</script>
</head>
<body>

	<jsp:include page="_header.jsp" />
	<div class="spacer">
    &nbsp;
	</div>
	<jsp:include page="Menu.html"/>


	<table>
		<tr>
			<th>Component ID</th>
			<th>Component Name</th>
			<th>Number of items</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${components}" var="component" varStatus="loop">
			<tr>
				<td><c:out value="${component.getComponent_id()}" /></td>
				<td><c:out value="${component.getComponent_name()}" /></td>
				<td><c:out value="${component.getQuantity()}" /></td>
				<td><button id="delete"
						onclick="deleteComponent('${component.getComponent_id()}')">Delete</button></td>
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="_footer.jsp" />
</body>
</html>
