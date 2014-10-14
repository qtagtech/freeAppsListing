<%@ page import="com.FreeAppListing.Application" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-application" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-application" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'application.name.label', default: 'Name')}"/>

            <th><g:message code="application.category.label" default="Category"/></th>

            <th><g:message code="application.company.label" default="Company"/></th>

            <g:sortableColumn property="description"
                              title="${message(code: 'application.description.label', default: 'Description')}"/>

            <g:sortableColumn property="mRating"
                              title="${message(code: 'application.mRating.label', default: 'M Rating')}"/>

            <g:sortableColumn property="uRating"
                              title="${message(code: 'application.uRating.label', default: 'U Rating')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${applicationInstanceList}" status="i" var="applicationInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${applicationInstance.id}">${fieldValue(bean: applicationInstance, field: "name")}</g:link></td>

                <td>${fieldValue(bean: applicationInstance, field: "category")}</td>

                <td>${fieldValue(bean: applicationInstance, field: "company")}</td>

                <td>${fieldValue(bean: applicationInstance, field: "description")}</td>

                <td>${fieldValue(bean: applicationInstance, field: "mRating")}</td>

                <td>${fieldValue(bean: applicationInstance, field: "uRating")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${applicationInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
