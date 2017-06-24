<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>Save Customer</title>
<link
	href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<div class="container">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>

		<h3>Save Customer</h3>

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">
			
			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />

			<table class="table">
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" type="text"
								class="form-control" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" type="text"
								class="form-control" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" type="text" class="form-control" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="btn btn-success" /></td>
					</tr>
				</tbody>
			</table>

		</form:form>

		<div style=""></div>

		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>

	</div>

	<script
		src="${pageContext.request.contextPath}/webjars/jquery/1.9.1/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>










