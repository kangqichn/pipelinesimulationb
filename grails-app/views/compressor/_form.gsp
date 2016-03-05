<%@ page import="cn.edu.cup.ogts.equipment.Compressor" %>



<div class="fieldcontain ${hasErrors(bean: compressorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="compressor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${compressorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorInstance, field: 'compressorType', 'error')} ">
	<label for="compressorType">
		<g:message code="compressor.compressorType.label" default="Compressor Type" />
		
	</label>
	<g:select id="compressorType" name="compressorType.id" from="${cn.edu.cup.ogts.equipment.CompressorType.list()}" optionKey="id" value="${compressorInstance?.compressorType?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorInstance, field: 'driverName', 'error')} ">
	<label for="driverName">
		<g:message code="compressor.driverName.label" default="Driver Name" />
		
	</label>
	<g:textField name="driverName" value="${compressorInstance?.driverName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorInstance, field: 'driverType', 'error')} ">
	<label for="driverType">
		<g:message code="compressor.driverType.label" default="Driver Type" />
		
	</label>
	<g:textField name="driverType" value="${compressorInstance?.driverType}"/>

</div>

