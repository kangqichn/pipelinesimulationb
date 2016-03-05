<%@ page import="cn.edu.cup.ogts.equipment.CompressorType" %>



<div class="fieldcontain ${hasErrors(bean: compressorTypeInstance, field: 'manufacturer', 'error')} required">
	<label for="manufacturer">
		<g:message code="compressorType.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manufacturer" required="" value="${compressorTypeInstance?.manufacturer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorTypeInstance, field: 'compressorModel', 'error')} required">
	<label for="compressorModel">
		<g:message code="compressorType.compressorModel.label" default="Compressor Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="compressorModel" required="" value="${compressorTypeInstance?.compressorModel}"/>

</div>

