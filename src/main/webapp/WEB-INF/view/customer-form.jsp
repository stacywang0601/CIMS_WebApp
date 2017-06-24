<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<title>Save Customer</title>
</head>

<body>
	<div class="container">
		<div id="header">
			<h3>CIMS - Customer Info Management System</h3>
		</div>

		<h4>Save Customer</h4>

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />

			<table class="table">
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" type="text"
								class="form-control" required="required" /></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" type="text"
								class="form-control" required="required" /></td>
					</tr>
					<tr>
					
						<td><label>Email:</label></td>
						<td><form:input path="email" type="text" class="form-control"
								required="required" /></td>

					</tr>
					<tr>
						<td></td>
						<td><form:errors path="email" cssClass="text-warning" /></td>
					</tr>
				</tbody>
			</table>
			<button type="submit" class="btn btn-success">Save</button>

		</form:form>

		<div style=""></div>

		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>

	</div>

	<%@ include file="common/footer.jspf"%>