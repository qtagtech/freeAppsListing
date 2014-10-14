<%@ page import="com.FreeAppListing.EventType" %>



<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="eventType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${eventTypeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="eventType.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${eventTypeInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="eventType.events.label" default="Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventTypeInstance?.events?}" var="e">
    <li><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="event" action="create" params="['eventType.id': eventTypeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'planPrices', 'error')} ">
	<label for="planPrices">
		<g:message code="eventType.planPrices.label" default="Plan Prices" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventTypeInstance?.planPrices?}" var="p">
    <li><g:link controller="priceInPlan" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="priceInPlan" action="create" params="['eventType.id': eventTypeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'priceInPlan.label', default: 'PriceInPlan')])}</g:link>
</li>
</ul>


</div>

