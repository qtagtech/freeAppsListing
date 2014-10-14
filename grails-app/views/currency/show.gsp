
<%@ page import="com.FreeAppListing.Currency" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'currency.label', default: 'Currency')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-currency" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-currency" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list currency">
			
				<g:if test="${currencyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="currency.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${currencyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${currencyInstance?.symbol}">
				<li class="fieldcontain">
					<span id="symbol-label" class="property-label"><g:message code="currency.symbol.label" default="Symbol" /></span>
					
						<span class="property-value" aria-labelledby="symbol-label"><g:fieldValue bean="${currencyInstance}" field="symbol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${currencyInstance?.cents}">
				<li class="fieldcontain">
					<span id="cents-label" class="property-label"><g:message code="currency.cents.label" default="Cents" /></span>
					
						<span class="property-value" aria-labelledby="cents-label"><g:formatBoolean boolean="${currencyInstance?.cents}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${currencyInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="currency.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${currencyInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${currencyInstance?.countries}">
				<li class="fieldcontain">
					<span id="countries-label" class="property-label"><g:message code="currency.countries.label" default="Countries" /></span>
					
						<g:each in="${currencyInstance.countries}" var="c">
						<span class="property-value" aria-labelledby="countries-label"><g:link controller="country" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:currencyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${currencyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
