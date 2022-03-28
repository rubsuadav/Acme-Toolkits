<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<acme:form readonly="${readonly}">
	<acme:input-textbox code="inventor.patronage-report.form.label.automatic-sequence-number" path="automaticSequenceNumber"/>	
	<acme:input-moment code="inventor.patronage-report.form.label.creation" path="creation"/>
	<acme:input-textarea code="inventor.patronage-report.form.label.memorandum" path="memorandum"/>
	<acme:input-url code="inventor.patronage-report.form.label.link" path="link"/>
	<acme:input-textbox code="inventor.patronage-report.form.label.patronage" path="patronage"/>
	
</acme:form>