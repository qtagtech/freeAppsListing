
<%@ page import="com.FreeAppListing.Publisher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publisher.label', default: 'Publisher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-publisher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-publisher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list publisher">
			
				<g:if test="${publisherInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="publisher.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${publisherInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.web}">
				<li class="fieldcontain">
					<span id="web-label" class="property-label"><g:message code="publisher.web.label" default="Web" /></span>
					
						<span class="property-value" aria-labelledby="web-label"><g:fieldValue bean="${publisherInstance}" field="web"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="publisher.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${publisherInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.key}">
				<li class="fieldcontain">
					<span id="key-label" class="property-label"><g:message code="publisher.key.label" default="Key" /></span>
					
						<span class="property-value" aria-labelledby="key-label"><g:fieldValue bean="${publisherInstance}" field="key"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="publisher.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${publisherInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="publisher.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${publisherInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:publisherInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${publisherInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
