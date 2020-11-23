<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<title> List Customers</title>
		
		<link 
			type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css"/>
				
	</head>


	<body>
		List Customers !! 
		<div id="wrapper">
			<div id="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		
		<div id="container">
			<div id="content">
			
				
				<table>
					<tr>
						<th> First Name </th>
						<th> Last Name </th>
						<th> Email </th>
						<th> Action </th>
					</tr>
					
					<!-- Creating for loop to print customers  -->
					<c:forEach var="tmpCustomer" items="${customers }">
						<!-- Creating an update link with customer id -->
						<c:url var="updateLink" value="/customer/showUpdateForm">
							<c:param name="customerId" value="${tmpCustomer.id}"></c:param>
						</c:url>
						
						
						<!-- Creating a Delete link -->
						<c:url var="deleteLink" value="/customer/deleteCustomer">
							<c:param name="customerId" value="${tmpCustomer.id }"></c:param>
						</c:url>
						<tr>
							<td>${tmpCustomer.firstName }</td>
							<td>${tmpCustomer.lastName }</td>
							<td>${tmpCustomer.email }</td>
							<td>
								<!-- Display the update link -->
								<a href="${updateLink}">Update</a>
								<!-- Display the delete link -->
								<a href="${deleteLink}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			
				<br>
				<!-- Button to save a new customer to Database -->
				<input  type="button" value="Add Customer" 
						onclick="window.location.href='showSaveCustomerForm'; return false;"
						class="add-button"
				/>
			</div>
		</div>
		
	</body>
</html>