<%@ page import="com.FreeAppListing.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tagInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="tag.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${tagInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'apps', 'error')} ">
	<label for="apps">
		<g:message code="tag.apps.label" default="Apps" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tagInstance?.apps?}" var="a">
    <li><g:link controller="tagged" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tagged" action="create" params="['tag.id': tagInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tagged.label', default: 'Tagged')])}</g:link>
</li>
</ul>


</div>

