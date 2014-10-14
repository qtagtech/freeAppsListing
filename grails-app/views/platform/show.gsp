
<%@ page import="com.FreeAppListing.Platform" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'platform.label', default: 'Platform')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-platform" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-platform" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list platform">
			
				<g:if test="${platformInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="platform.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${platformInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${platformInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="platform.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${platformInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${platformInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="platform.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${platformInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${platformInstance?.marketplace}">
				<li class="fieldcontain">
					<span id="marketplace-label" class="property-label"><g:message code="platform.marketplace.label" default="Marketplace" /></span>
					
						<span class="property-value" aria-labelledby="marketplace-label"><g:fieldValue bean="${platformInstance}" field="marketplace"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${platformInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="platform.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${platformInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${platformInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="platform.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${platformInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:platformInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${platformInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
