<%@ page import="cn.edu.cup.base.CurvePoint" %>



<div class="fieldcontain ${hasErrors(bean: curvePointInstance, field: 'curve', 'error')} required">
	<label for="curve">
		<g:message code="curvePoint.curve.label" default="Curve" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curve" name="curve.id" from="${cn.edu.cup.base.Curve.list()}" optionKey="id" required="" value="${curvePointInstance?.curve?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: curvePointInstance, field: 'x', 'error')} required">
	<label for="x">
		<g:message code="curvePoint.x.label" default="X" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="x" value="${fieldValue(bean: curvePointInstance, field: 'x')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: curvePointInstance, field: 'y', 'error')} required">
	<label for="y">
		<g:message code="curvePoint.y.label" default="Y" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="y" value="${fieldValue(bean: curvePointInstance, field: 'y')}" required=""/>

</div>

