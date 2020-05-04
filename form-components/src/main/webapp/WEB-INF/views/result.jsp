<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Employee Details</h1>



		<table class="table">
		
			<tr>
				<td>Name: </td>
				<td>${employee.name }</td>
			</tr>
			
			<tr>
				<td>Country: </td>
				<td>${employee.countryRadio }</td>
			</tr>
			
			<tr>
				<td>Qualification: </td>
				<td>${employee.qualification }</td>
			</tr>

			<tr>
				<td>SkillSet: </td>
				<c:forEach items="${employee.skillSetList }" var="skill">
					<td>${skill.name }
					</td>
				</c:forEach>
			</tr>
			
			<tr>
				<td>Bands: </td>
				<c:forEach items="${employee.bandsList }" var="band">
					<td>${band.name }
					</td>
				</c:forEach>
			</tr>
			
			
			
			<tr>
				<td>Notes: </td>
				<td>${employee.notes }</td>

			</tr>
		</table>
		<a href="/register">Home</a>

		<hr>
		<%
			com.techleads.app.model.SkillSet q1, q2, q3;
		q1 = new com.techleads.app.model.SkillSet(101, "Java");
		q2 = new com.techleads.app.model.SkillSet(101, "SpringBoot");
		q3 = new com.techleads.app.model.SkillSet(101, "Microservices");

		com.techleads.app.model.SkillSet[] skillSets = { q1, q2, q3 };
		request.setAttribute("skillSets", skillSets);
		%>
		<table>
			<tr>
				<c:forEach var="skill" items="${skillSets}">

					<td><c:out value="${skill.name}" /></td>

				</c:forEach>
			</tr>
		</table>
	</div>
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