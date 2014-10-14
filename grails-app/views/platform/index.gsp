
<%@ page import="com.FreeAppListing.Platform" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'platform.label', default: 'Platform')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-platform" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-platform" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'platform.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'platform.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="website" title="${message(code: 'platform.website.label', default: 'Website')}" />
					
						<g:sortableColumn property="marketplace" title="${message(code: 'platform.marketplace.label', default: 'Marketplace')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'platform.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'platform.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${platformInstanceList}" status="i" var="platformInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${platformInstance.id}">${fieldValue(bean: platformInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: platformInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: platformInstance, field: "website")}</td>
					
						<td>${fieldValue(bean: platformInstance, field: "marketplace")}</td>
					
						<td><g:formatDate date="${platformInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${platformInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${platformInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
