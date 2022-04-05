<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<acme:list>
	<acme:list-column code="patron.announcement.list.label.creationMoment" path="creationMoment" width="20%"/>
	<acme:list-column code="patron.announcement.list.label.title" path="title" width="20%"/>
	
</acme:list>