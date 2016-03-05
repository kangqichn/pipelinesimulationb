<%@ page import="cn.edu.cup.producing.ProductionData" %>



<div class="fieldcontain ${hasErrors(bean: productionDataInstance, field: 'dateFlag', 'error')} required">
	<label for="dateFlag">
		<g:message code="productionData.dateFlag.label" default="Date Flag" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateFlag" precision="day"  value="${productionDataInstance?.dateFlag}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: productionDataInstance, field: 'flowrateGas', 'error')} required">
	<label for="flowrateGas">
		<g:message code="productionData.flowrateGas.label" default="Flowrate Gas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flowrateGas" value="${fieldValue(bean: productionDataInstance, field: 'flowrateGas')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productionDataInstance, field: 'flowrateOil', 'error')} required">
	<label for="flowrateOil">
		<g:message code="productionData.flowrateOil.label" default="Flowrate Oil" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flowrateOil" value="${fieldValue(bean: productionDataInstance, field: 'flowrateOil')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productionDataInstance, field: 'flowrateWater', 'error')} required">
	<label for="flowrateWater">
		<g:message code="productionData.flowrateWater.label" default="Flowrate Water" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flowrateWater" value="${fieldValue(bean: productionDataInstance, field: 'flowrateWater')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productionDataInstance, field: 'pressure', 'error')} required">
	<label for="pressure">
		<g:message code="productionData.pressure.label" default="Pressure" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pressure" value="${fieldValue(bean: productionDataInstance, field: 'pressure')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productionDataInstance, field: 'temperature', 'error')} required">
	<label for="temperature">
		<g:message code="productionData.temperature.label" default="Temperature" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="temperature" value="${fieldValue(bean: productionDataInstance, field: 'temperature')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productionDataInstance, field: 'well', 'error')} required">
	<label for="well">
		<g:message code="productionData.well.label" default="Well" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="well" name="well.id" from="${cn.edu.cup.producing.Well.list()}" optionKey="id" required="" value="${productionDataInstance?.well?.id}" class="many-to-one"/>

</div>

