<%@ page import="com.FreeAppListing.Plan" %>



<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="plan.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${planInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="plan.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${planInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="plan.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: planInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planInstance, field: 'eventPrices', 'error')} ">
	<label for="eventPrices">
		<g:message code="plan.eventPrices.label" default="Event Prices" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${planInstance?.eventPrices?}" var="e">
    <li><g:link controller="priceInPlan" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="priceInPlan" action="create" params="['plan.id': planInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'priceInPlan.label', default: 'PriceInPlan')])}</g:link>
</li>
</ul>


</div>

