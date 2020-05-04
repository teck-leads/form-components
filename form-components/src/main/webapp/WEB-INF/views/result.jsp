<%@include file="commons/header.jspf"%>
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
				<tr>
				<td>Available From: </td>
				<td><fmt:formatDate value="${employee.availableFromdate }" pattern="dd/MMM/yyyy"/></td>
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
	<!-- https://docs.spring.io/spring/docs/3.2.x/spring-framework-reference/html/view.html -->
<%@include file="commons/footer.jspf"%>