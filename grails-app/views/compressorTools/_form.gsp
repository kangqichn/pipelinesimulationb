<%@ page import="cn.edu.cup.ogts.equipment.CompressorCurveTest" %>



<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'compressor', 'error')} required">
	<label for="compressor">
		<g:message code="compressorCurveTest.compressor.label" default="Compressor" />
		<span class="required-indicator">*</span>
	</label>
	<!--g:textField id="compressor" name="compressor.id" optionKey="id" required="" class="many-to-one"/-->
	<g:select id="compressor" name="compressor.id" from="${cn.edu.cup.ogts.equipment.Compressor.list()}" optionKey="id" required="" value="${compressorCurveTestInstance?.compressor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'pressure', 'error')} required">
	<label for="pressure">
		<g:message code="compressorCurveTest.pressure.label" default="Pressure" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pressure" value="${fieldValue(bean: compressorCurveTestInstance, field: 'pressure')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'pressureUnit', 'error')} required">
	<label for="pressureUnit">
		<g:message code="compressorCurveTest.pressureUnit.label" default="Pressure Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pressureUnit" required="" value="${compressorCurveTestInstance?.pressureUnit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'temperatrue', 'error')} required">
	<label for="temperatrue">
		<g:message code="compressorCurveTest.temperatrue.label" default="Temperatrue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="temperatrue" value="${fieldValue(bean: compressorCurveTestInstance, field: 'temperatrue')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'temperatureUnit', 'error')} required">
	<label for="temperatureUnit">
		<g:message code="compressorCurveTest.temperatureUnit.label" default="Temperature Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="temperatureUnit" required="" value="${compressorCurveTestInstance?.temperatureUnit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'speed', 'error')} required">
	<label for="speed">
		<g:message code="compressorCurveTest.speed.label" default="Speed" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="speed" value="${fieldValue(bean: compressorCurveTestInstance, field: 'speed')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'speedUnit', 'error')} required">
	<label for="speedUnit">
		<g:message code="compressorCurveTest.speedUnit.label" default="Speed Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="speedUnit" required="" value="${compressorCurveTestInstance?.speedUnit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'testDate', 'error')} ">
	<label for="testDate">
		<g:message code="compressorCurveTest.testDate.label" default="Test Date" />
		
	</label>
	<g:datePicker name="testDate" precision="day"  value="${compressorCurveTestInstance?.testDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="compressorCurveTest.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${compressorCurveTestInstance?.comment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'curve', 'error')} ">
	<label for="curve">
		<g:message code="compressorCurveTest.curve.label" default="Curve" />
		
	</label>
	<g:select id="curve" name="curve.id" from="${cn.edu.cup.base.Curve.list()}" optionKey="id" value="${compressorCurveTestInstance?.curve?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: compressorCurveTestInstance, field: 'gas', 'error')} required">
	<label for="gas">
		<g:message code="compressorCurveTest.gas.label" default="Gas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gas" name="gas.id" from="${cn.edu.cup.fluid.gas.FluidGas.list()}" optionKey="id" required="" value="${compressorCurveTestInstance?.gas?.id}" class="many-to-one"/>

</div>

