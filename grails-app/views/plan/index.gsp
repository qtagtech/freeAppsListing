
<%@ page import="com.FreeAppListing.Plan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plan.label', default: 'Plan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'plan.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'plan.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'plan.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'plan.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'plan.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planInstanceList}" status="i" var="planInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planInstance.id}">${fieldValue(bean: planInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: planInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: planInstance, field: "price")}</td>
					
						<td><g:formatDate date="${planInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${planInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
