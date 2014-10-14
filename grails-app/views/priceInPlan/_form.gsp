<%@ page import="com.FreeAppListing.PriceInPlan" %>



<div class="fieldcontain ${hasErrors(bean: priceInPlanInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="priceInPlan.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: priceInPlanInstance, field: 'value')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: priceInPlanInstance, field: 'currency', 'error')} required">
	<label for="currency">
		<g:message code="priceInPlan.currency.label" default="Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="currency" name="currency.id" from="${com.FreeAppListing.Currency.list()}" optionKey="id" required="" value="${priceInPlanInstance?.currency?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: priceInPlanInstance, field: 'eventType', 'error')} required">
	<label for="eventType">
		<g:message code="priceInPlan.eventType.label" default="Event Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="eventType" name="eventType.id" from="${com.FreeAppListing.EventType.list()}" optionKey="id" required="" value="${priceInPlanInstance?.eventType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: priceInPlanInstance, field: 'plan', 'error')} required">
	<label for="plan">
		<g:message code="priceInPlan.plan.label" default="Plan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plan" name="plan.id" from="${com.FreeAppListing.Plan.list()}" optionKey="id" required="" value="${priceInPlanInstance?.plan?.id}" class="many-to-one"/>

</div>

