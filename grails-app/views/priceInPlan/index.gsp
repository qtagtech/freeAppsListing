
<%@ page import="com.FreeAppListing.PriceInPlan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'priceInPlan.label', default: 'PriceInPlan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-priceInPlan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-priceInPlan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="value" title="${message(code: 'priceInPlan.value.label', default: 'Value')}" />
					
						<th><g:message code="priceInPlan.currency.label" default="Currency" /></th>
					
						<th><g:message code="priceInPlan.eventType.label" default="Event Type" /></th>
					
						<th><g:message code="priceInPlan.plan.label" default="Plan" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${priceInPlanInstanceList}" status="i" var="priceInPlanInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${priceInPlanInstance.id}">${fieldValue(bean: priceInPlanInstance, field: "value")}</g:link></td>
					
						<td>${fieldValue(bean: priceInPlanInstance, field: "currency")}</td>
					
						<td>${fieldValue(bean: priceInPlanInstance, field: "eventType")}</td>
					
						<td>${fieldValue(bean: priceInPlanInstance, field: "plan")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${priceInPlanInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
