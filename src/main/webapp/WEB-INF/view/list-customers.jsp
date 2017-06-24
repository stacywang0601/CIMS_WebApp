<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<title>List Customers</title>
</head>

<body>
	<div class="container">
		<div class="header">
			<h3>CIMS - Customer Info Management System</h3>
		</div>
		<table class="table table-striped">
			<!--  html table here -->
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">

					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td>
							<!-- display the update link --> <a type="button"
							class="btn btn-primary" href="${updateLink}">Update</a> <a
							type="button" class="btn btn-warning" href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>

						</td>
					</tr>
				</c:forEach>
			<tbody>
		</table>
		<div>
			<!-- put new button: Add Customer -->
			<input type="button" value="Add Customer"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="btn btn-success" />
		</div>
	</div>
	<%@ include file="common/footer.jspf"%>