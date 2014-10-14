<%@ page import="com.FreeAppListing.Publisher" %>



<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="publisher.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${publisherInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'web', 'error')} required">
	<label for="web">
		<g:message code="publisher.web.label" default="Web" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="web" required="" value="${publisherInstance?.web}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="publisher.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${publisherInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'key', 'error')} required">
	<label for="key">
		<g:message code="publisher.key.label" default="Key" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="key" required="" value="${publisherInstance?.key}"/>

</div>

