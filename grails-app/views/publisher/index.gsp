
<%@ page import="com.FreeAppListing.Publisher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publisher.label', default: 'Publisher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-publisher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-publisher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'publisher.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="web" title="${message(code: 'publisher.web.label', default: 'Web')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'publisher.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="key" title="${message(code: 'publisher.key.label', default: 'Key')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'publisher.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'publisher.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${publisherInstanceList}" status="i" var="publisherInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${publisherInstance.id}">${fieldValue(bean: publisherInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: publisherInstance, field: "web")}</td>
					
						<td>${fieldValue(bean: publisherInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: publisherInstance, field: "key")}</td>
					
						<td><g:formatDate date="${publisherInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${publisherInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${publisherInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
