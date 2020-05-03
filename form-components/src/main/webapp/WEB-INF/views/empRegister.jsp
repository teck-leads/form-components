<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form:form modelAttribute="empCmd" role = "form">
			<div class="form-group">

				<label for="name">Name</label>
				<form:input path="name" class="form-control" />
			</div>

			<!-- Single value radio button Start -->


			<label class="radio-inline"> <form:radiobutton
					path="countryRadio" value="india" />India
			</label>
			<label class="radio-inline"> <form:radiobutton
					path="countryRadio" value="USA" />USA
			</label>

			<!-- Single value radio button End-->

			<!--Single selection Dropdown start  -->
			<div class="form-group">
				<label for="qualification">Qualification</label>
				<form:select path="qualification" class="form-control">
					<form:option value="" label="Please Select" />
					<form:options items="${qualificationList }" itemValue="id"
						itemLabel="name" />
				</form:select>
			</div>
			<!--Single selection Dropdown End -->


			<!--Multi selection dropdown  Start -->
			<div class="form-group">
				<label for="exampleFormControlSelect2">Skill Set</label>
				<%-- <form:select path="skillSetList" multiple="true" class="form-control"> --%>
				<form:select path="skillSetArray" multiple="true" class="form-control">
				
					<form:options items="${skillSetList }" itemValue="id"
						itemLabel="name" />
				</form:select>
			</div>
			<!--Multi selection dropdown  End -->

			<!--Text Area  Starts -->
			<div class="form-group">
				<label for="notes">Notes</label>
				<form:textarea path="notes" rows="3" class="form-control" />
			</div>
			<!--Text Area  Ends-->
			<td><input type="submit" value="Register"
				class="btn btn-primary"></td>


		</form:form>
	</div>


	<!-- https://docs.spring.io/spring/docs/3.2.x/spring-framework-reference/html/view.html -->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>