<%@ page import="cn.edu.cup.base.Curve" %>



<div class="fieldcontain ${hasErrors(bean: curveInstance, field: 'alias', 'error')} ">
	<label for="alias">
		<g:message code="curve.alias.label" default="Alias" />
		
	</label>
	<g:textField name="alias" value="${curveInstance?.alias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: curveInstance, field: 'xLabel', 'error')} required">
	<label for="xLabel">
		<g:message code="curve.xLabel.label" default="X Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="xLabel" required="" value="${curveInstance?.xLabel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: curveInstance, field: 'xUnit', 'error')} ">
	<label for="xUnit">
		<g:message code="curve.xUnit.label" default="X Unit" />
		
	</label>
	<g:textField name="xUnit" value="${curveInstance?.xUnit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: curveInstance, field: 'yLabel', 'error')} required">
	<label for="yLabel">
		<g:message code="curve.yLabel.label" default="Y Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="yLabel" required="" value="${curveInstance?.yLabel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: curveInstance, field: 'yUnit', 'error')} ">
	<label for="yUnit">
		<g:message code="curve.yUnit.label" default="Y Unit" />
		
	</label>
	<g:textField name="yUnit" value="${curveInstance?.yUnit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: curveInstance, field: 'points', 'error')} ">
	<label for="points">
		<g:message code="curve.points.label" default="Points" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${curveInstance?.points?}" var="p">
    <li><g:link controller="curvePoint" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="curvePoint" action="create" params="['curve.id': curveInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'curvePoint.label', default: 'CurvePoint')])}</g:link>
</li>
</ul>


</div>

