<%@ page import="com.FreeAppListing.Currency" %>



<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="currency.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${currencyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'symbol', 'error')} required">
	<label for="symbol">
		<g:message code="currency.symbol.label" default="Symbol" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="symbol" required="" value="${currencyInstance?.symbol}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'cents', 'error')} ">
	<label for="cents">
		<g:message code="currency.cents.label" default="Cents" />
		
	</label>
	<g:checkBox name="cents" value="${currencyInstance?.cents}" />

</div>

<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="currency.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${currencyInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: currencyInstance, field: 'countries', 'error')} ">
	<label for="countries">
		<g:message code="currency.countries.label" default="Countries" />
		
	</label>
	<g:select name="countries" from="${com.FreeAppListing.Country.list()}" multiple="multiple" optionKey="id" size="5" value="${currencyInstance?.countries*.id}" class="many-to-many"/>

</div>

