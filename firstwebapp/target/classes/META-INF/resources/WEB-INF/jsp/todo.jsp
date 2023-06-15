
		<%@ include file="common/header.jspf" %>
		<%@ include file="common/navigation.jspf" %>
		<div class="container">
			<h2>Enter Todo Details</h2>
			<form:form method="post" modelAttribute="todo">
				<fieldset class="mb-3">
					<form:errors path="description" cssClass="text-warning"/>
					<form:label path="description">Description:</form:label>
					<form:input type="text" path="description" required="required"/>
				</fieldset>
				<fieldset class="mb-3">
					<form:errors path="targetDate" cssClass="text-warning"/>
					<form:label path="targetDate">Target Date:</form:label>
					<form:input type="text" path="targetDate" required="required"/>
				</fieldset>
				<form:input type="hidden" path="id" required="required"/>
				<form:input type="hidden" path="done" required="required"/>
				<input type="submit" class="btn btn-success"/>
			</form:form>
			
		</div>
		
		<%@ include file="common/footer.jspf" %>
		
		<script type="text/javascript">
			$("#targetDate").datepicker({
				format: "yyyy-mm-dd"
			})
		</script>