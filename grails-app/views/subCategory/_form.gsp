<%@ page import="com.FreeAppListing.SubCategory" %>



<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subCategoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="subCategory.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${subCategoryInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'apps', 'error')} ">
	<label for="apps">
		<g:message code="subCategory.apps.label" default="Apps" />
		
	</label>
	<g:select name="apps" from="${com.FreeAppListing.Application.list()}" multiple="multiple" optionKey="id" size="5" value="${subCategoryInstance?.apps*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="subCategory.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${com.FreeAppListing.Category.list()}" optionKey="id" required="" value="${subCategoryInstance?.category?.id}" class="many-to-one"/>

</div>

