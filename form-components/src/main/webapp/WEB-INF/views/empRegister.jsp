<%@include file="commons/header.jspf"%>
	<div class="container">
		<form:form modelAttribute="empCmd" role="form">
			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="name" class="form-control" />
			</div>

<!-- Single value radio button Start -->
			<div class="form-group">
				<label for="Country Radio button">Country</label> <label
					class="radio-inline"> <form:radiobutton path="countryRadio"
						value="india" />India
				</label> <label class="radio-inline"> <form:radiobutton
						path="countryRadio" value="USA" />USA
				</label>
			</div>
<!-- Single value radio button End-->

<!--Single selection Dropdown start  -->
			<div class="form-group">
				<label for="qualification">Qualification</label>
				<form:select path="qualification" class="form-control">
					<form:option value="" label="Please Select" />
					<form:options items="${qualificationList }" itemValue="id" itemLabel="name" />
				</form:select>
			</div>
<!--Single selection Dropdown End -->

<!--Multi selection dropdown  Start -->
			<div class="form-group">
				<label for="exampleFormControlSelect2">Skill Set</label>
				<%-- <form:select path="skillSetList" multiple="true" class="form-control"> --%>
				<form:select path="skillSetOptionsValuesMultiDropdown" multiple="true" class="form-control">
					<form:options items="${skillSetList }" itemValue="id" itemLabel="name" />
				</form:select>
			</div>
			<!--Multi selection dropdown  End -->
			
			<!--Multi-select Checkboxes start  -->
			<%--  <label for="bands">Bands</label>
			 	<div class="form-check">
					<form:checkboxes items="${bands }" path="bandsMultiSelectionCheckBoxes"   itemValue="id" itemLabel="name" />
			    </div> --%>
			<label for="name">Bands</label>
		<c:forEach items="${bands }" var="band" >
			<div class="form-check">
  				<form:checkbox path="bandsMultiSelectionCheckBoxes" class="form-check-input" value="${band.id }" />
 				<label class="form-check-label" for="defaultCheck1">
    				${band.name }
  				</label>
			</div>
		</c:forEach>
			
<!--Multi-select Checkboxes End  -->
	
<!--Text Area  Starts -->
			<div class="form-group">
				<label for="notes">Notes</label>
				<form:textarea path="notes" rows="2" class="form-control" />
			</div>
<!--Text Area  Ends-->
			
			
<!--Date picker  Starts -->	
			<div class="form-group">
				<label for="notes">Available From</label>
				<form:input path="availableFromdate" type="date" class="form-control"/>
			</div>

<!--Date picker  Starts -->			
			
<!--submit button  Starts -->	
			<td>
			<input type="submit" value="Register" class="btn btn-primary">
			</td>
<!--submit button  Ends -->	

		</form:form>
		 
	</div>


	<!-- https://docs.spring.io/spring/docs/3.2.x/spring-framework-reference/html/view.html -->
<%@include file="commons/footer.jspf"%>