<%@ page import="com.FreeAppListing.Platform" %>



<div class="fieldcontain ${hasErrors(bean: platformInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="platform.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${platformInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: platformInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="platform.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${platformInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: platformInstance, field: 'website', 'error')} required">
	<label for="website">
		<g:message code="platform.website.label" default="Website" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="website" required="" value="${platformInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: platformInstance, field: 'marketplace', 'error')} required">
	<label for="marketplace">
		<g:message code="platform.marketplace.label" default="Marketplace" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="marketplace" required="" value="${platformInstance?.marketplace}"/>

</div>

