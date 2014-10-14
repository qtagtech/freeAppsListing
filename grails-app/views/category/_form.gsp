<%@ page import="com.FreeAppListing.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${categoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="category.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${categoryInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'subcategories', 'error')} ">
	<label for="subcategories">
		<g:message code="category.subcategories.label" default="Subcategories" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.subcategories?}" var="s">
    <li><g:link controller="subCategory" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subCategory" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subCategory.label', default: 'SubCategory')])}</g:link>
</li>
</ul>


</div>

