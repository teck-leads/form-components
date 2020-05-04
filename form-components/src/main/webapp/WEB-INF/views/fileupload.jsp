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

	<form:form enctype="multipart/form-data">
	<pre>
	Name
	<form:input path="name"/>
	Upload file1 <form:input path="file1" type="file"/>
	Upload file2 <form:input path="file2" type="file"/>
	
	</pre>
	
	</form:form>



<!-- https://docs.spring.io/spring/docs/3.2.x/spring-framework-reference/html/view.html -->


</body>
</html>