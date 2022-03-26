<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<acme:form readonly="${readonly}">
	<acme:input-select code="inventor.item.form.label.typeEntity" path="typeEntity">
		<acme:input-option code="TOOL" value="TOOL" selected="${typeEntity == 'TOOL'}"/>
		<acme:input-option code="COMPONENT" value="COMPONENT" selected="${typeEntity == 'COMPONENT'}"/>
	</acme:input-select>
	<acme:input-textbox code="inventor.item.form.label.name" path="name"/>	
	<acme:input-textarea code="inventor.item.form.label.code" path="code"/>
	<acme:input-textarea code="inventor.item.form.label.technology" path="technology"/>
	<acme:input-textarea code="inventor.item.form.label.description" path="description"/>
	<acme:input-money code="inventor.item.form.label.retailPrice" path="retailPrice"/>
	<acme:input-url code="inventor.item.form.label.link" path="link"/>
	
</acme:form>