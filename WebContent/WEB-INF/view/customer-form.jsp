<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
	<head>	
		<title>Add Customer</title>
		<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/resources/css/style.css"/>
		  
		  <link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
	</head>
	<body>
		Customer Form !! COMING SOON ...
		
		<div id="wrapper">
			<h2>Customer Manager</h2>
		</div>
		
		<div id="container">
			<h3>Add Customer</h3>
			<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				<table>
					<tbody>
						<tr> <form:hidden path="id"/> </tr>
						<tr>
							<td><label>First Name:</label></td>
							<td><form:input path="firstName"/></td>
						</tr>
						
						<tr>
							<td><label>Last Name:</label></td>
							<td><form:input path="lastName"/></td>
						</tr>
						
						
						<tr>
							<td><label>Email:</label></td>
							<td><form:input path="email"/></td>
						</tr>
						
						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save" class="save"/></td>
						</tr>
					</tbody>
				</table>		
			</form:form>
			
			<div style="clear; both;"></div>
			<p><a href="${pageContext.request.contextPath}/customer/list"> Back to List!</a></p>
		</div>
	</body>
</html>