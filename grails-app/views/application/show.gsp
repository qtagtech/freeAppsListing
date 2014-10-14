<%@ page import="com.FreeAppListing.Application" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-application" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-application" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list application">

        <g:if test="${applicationInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="application.name.label"
                                                                        default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${applicationInstance}"
                                                                                        field="name"/></span>

            </li>
        </g:if>

        <g:if test="${applicationInstance?.category}">
            <li class="fieldcontain">
                <span id="category-label" class="property-label"><g:message code="application.category.label"
                                                                            default="Category"/></span>

                <span class="property-value" aria-labelledby="category-label"><g:link controller="subCategory"
                                                                                      action="show"
                                                                                      id="${applicationInstance?.category?.id}">${applicationInstance?.category?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${applicationInstance?.company}">
            <li class="fieldcontain">
                <span id="company-label" class="property-label"><g:message code="application.company.label"
                                                                           default="Company"/></span>

                <span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show"
                                                                                     id="${applicationInstance?.company?.id}">${applicationInstance?.company?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${applicationInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="application.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                        bean="${applicationInstance}" field="description"/></span>

            </li>
        </g:if>

        <g:if test="${applicationInstance?.mRating}">
            <li class="fieldcontain">
                <span id="mRating-label" class="property-label"><g:message code="application.mRating.label"
                                                                           default="M Rating"/></span>

                <span class="property-value" aria-labelledby="mRating-label"><g:fieldValue bean="${applicationInstance}"
                                                                                           field="mRating"/></span>

            </li>
        </g:if>

        <g:if test="${applicationInstance?.tags}">
            <li class="fieldcontain">
                <span id="tags-label" class="property-label"><g:message code="application.tags.label"
                                                                        default="Tags"/></span>

                <g:each in="${applicationInstance.tags}" var="t">
                    <span class="property-value" aria-labelledby="tags-label"><g:link controller="tagged" action="show"
                                                                                      id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${applicationInstance?.uRating}">
            <li class="fieldcontain">
                <span id="uRating-label" class="property-label"><g:message code="application.uRating.label"
                                                                           default="U Rating"/></span>

                <span class="property-value" aria-labelledby="uRating-label"><g:fieldValue bean="${applicationInstance}"
                                                                                           field="uRating"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: applicationInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${applicationInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
