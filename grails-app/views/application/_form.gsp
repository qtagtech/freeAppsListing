<%@ page import="com.FreeAppListing.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="application.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${applicationInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'category', 'error')} required">
    <label for="category">
        <g:message code="application.category.label" default="Category"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="category" name="category.id" from="${com.FreeAppListing.SubCategory.list()}" optionKey="id"
              required="" value="${applicationInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'company', 'error')} required">
    <label for="company">
        <g:message code="application.company.label" default="Company"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="company" name="company.id" from="${com.FreeAppListing.Company.list()}" optionKey="id" required=""
              value="${applicationInstance?.company?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="application.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="description" required="" value="${applicationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'mRating', 'error')} required">
    <label for="mRating">
        <g:message code="application.mRating.label" default="M Rating"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="mRating" type="number" value="${applicationInstance.mRating}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'tags', 'error')} ">
    <label for="tags">
        <g:message code="application.tags.label" default="Tags"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${applicationInstance?.tags ?}" var="t">
            <li><g:link controller="tagged" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="tagged" action="create"
                    params="['application.id': applicationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tagged.label', default: 'Tagged')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'uRating', 'error')} required">
    <label for="uRating">
        <g:message code="application.uRating.label" default="U Rating"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="uRating" type="number" value="${applicationInstance.uRating}" required=""/>

</div>

