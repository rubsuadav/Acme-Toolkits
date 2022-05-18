<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<acme:form>
	<acme:input-integer code="inventor.item.form.label.number" path="number"/>
	<jstl:choose>
		<jstl:when test="${acme:anyOf(command, 'show, update, delete')}">
			<acme:input-textbox code="inventor.item.form.label.name" path="item.name" readonly="true"/>
			<acme:input-textbox code="inventor.item.form.label.code" path="item.code" readonly="true"/>
			<acme:input-textbox code="inventor.item.form.label.technology" path="item.technology" readonly="true"/>
			<acme:input-textbox code="inventor.item.form.label.description" path="item.description" readonly="true"/>
			<acme:input-money code="inventor.item.form.label.retailPrice" path="item.retailPrice" readonly="true"/>
			<acme:input-money code="inventor.item.form.label.conversion" path="conversion" readonly="true"/>
			<acme:input-textbox code="inventor.item.form.label.link" path="item.link" readonly="true"/>
			<acme:input-textbox code="inventor.item.form.label.published" path="published" readonly="true"/>
		
		<jstl:if test="${toolkitPublished == false}">
			<acme:submit code="inventor.quantity.form.button.update" action="/inventor/quantity/update"/>
			<acme:submit code="inventor.quantity.form.button.delete" action="/inventor/quantity/delete"/>
		</jstl:if>
		</jstl:when>
				
		<jstl:when test="${command == 'create'}">
			<acme:input-select code="inventor.item.form.label.item" path="itemId">
				<jstl:forEach items="${items}" var="item">
					<acme:input-option code="${item.getName()}" value="${item.getId()}" selected="${item.getId() == itemId }"/>
				</jstl:forEach>
			</acme:input-select>
					<acme:submit code="inventor.item-toolkit.form.button.create" action="/inventor/quantity/create?masterId=${masterId}"/>
		</jstl:when>		
	</jstl:choose>
</acme:form>