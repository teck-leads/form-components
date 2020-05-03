<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form modelAttribute="empCmd">

		<table>
			<tr>
				<td>Name</td>
				<td><form:input path="name" /></td>
			</tr>

<!-- Single value radio button Start -->
			<tr>
				<td>Country</td>
				<td><form:radiobutton path="countryRadio" value="india" />India
				<form:radiobutton path="countryRadio" value="USA" /> USA</td>
			</tr>
<!-- Single value radio button End-->

<!--Single selection Dropdown start  -->
			<tr>
				<td>Qualification</td>
				<td>
				<form:select path="qualification">
						<%-- <form:option value="">Select</form:option> --%>
						<%-- <c:forEach items="${qualificationList }" var="qlfy">
							<c:forEach items="${empCmd.qualificationList }" var="qlfy">
							<form:option value="${qlfy.id }">${qlfy.name }</form:option>
						</c:forEach> --%>
						 <form:option value="" label="--Please Select"/>
						<form:options items="${qualificationList }" itemValue="id" itemLabel="name"/>
				</form:select>
				</td>
			</tr>
<!--Single selection Dropdown End -->


<!--Multi selection dropdown  Start -->
<%-- <tr>
				<td>Skill Sets</td>
				<td>
				<form:select path="skillSetList">
						<form:option value="">Select</form:option>
						<c:forEach items="${qualificationList }" var="qlfy">
							<c:forEach items="${empCmd.qualificationList }" var="qlfy">
							<form:option value="${qlfy.id }">${qlfy.name }</form:option>
						</c:forEach>
				</form:select>
				</td>
			</tr> --%>
<!--Multi selection dropdown  End -->

			<tr>
				<td><input type="submit" value="Register"></td>
			</tr>
		</table>

	</form:form>



<!-- https://docs.spring.io/spring/docs/3.2.x/spring-framework-reference/html/view.html -->


</body>
</html>