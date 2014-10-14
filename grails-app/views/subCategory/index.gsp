
<%@ page import="com.FreeAppListing.SubCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subCategory.label', default: 'SubCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-subCategory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'subCategory.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'subCategory.description.label', default: 'Description')}" />
					
						<th><g:message code="subCategory.category.label" default="Category" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'subCategory.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'subCategory.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subCategoryInstanceList}" status="i" var="subCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subCategoryInstance.id}">${fieldValue(bean: subCategoryInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: subCategoryInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: subCategoryInstance, field: "category")}</td>
					
						<td><g:formatDate date="${subCategoryInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${subCategoryInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subCategoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
