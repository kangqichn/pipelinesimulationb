<%@ page import="cn.edu.cup.dictionary.KeyWord" %>



<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'keyContext', 'error')} required">
	<label for="keyContext">
		<g:message code="keyWord.keyContext.label" default="Key Context" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="keyContext" required="" value="${keyWordInstance?.keyContext}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="keyWord.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${keyWordInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'physicalQuantity', 'error')} ">
	<label for="physicalQuantity">
		<g:message code="keyWord.physicalQuantity.label" default="Physical Quantity" />
		
	</label>
	<g:select id="physicalQuantity" name="physicalQuantity.id" from="${cn.edu.cup.unit.PhysicalQuantity.list()}" optionKey="id" value="${keyWordInstance?.physicalQuantity?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'quantityUnit', 'error')} ">
	<label for="quantityUnit">
		<g:message code="keyWord.quantityUnit.label" default="Quantity Unit" />
		
	</label>
	<g:select id="quantityUnit" name="quantityUnit.id" from="${cn.edu.cup.unit.QuantityUnit.list()}" optionKey="id" value="${keyWordInstance?.quantityUnit?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'isNullable', 'error')} ">
	<label for="isNullable">
		<g:message code="keyWord.isNullable.label" default="Is Nullable" />
		
	</label>
	<g:checkBox name="isNullable" value="${keyWordInstance?.isNullable}" />

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'valueType', 'error')} required">
	<label for="valueType">
		<g:message code="keyWord.valueType.label" default="Value Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="valueType" name="valueType.id" from="${cn.edu.cup.dictionary.ValueType.list()}" optionKey="id" required="" value="${keyWordInstance?.valueType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'keyOrder', 'error')} required">
	<label for="keyOrder">
		<g:message code="keyWord.keyOrder.label" default="Key Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="keyOrder" type="number" value="${keyWordInstance.keyOrder}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'appendValue', 'error')} ">
	<label for="appendValue">
		<g:message code="keyWord.appendValue.label" default="Append Value" />
		
	</label>
	<g:textField name="appendValue" value="${keyWordInstance?.appendValue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'upKeyWord', 'error')} ">
	<label for="upKeyWord">
		<g:message code="keyWord.upKeyWord.label" default="Up Key Word" />
		
	</label>
	<g:select id="upKeyWord" name="upKeyWord.id" from="${cn.edu.cup.dictionary.KeyWord.list()}" optionKey="id" value="${keyWordInstance?.upKeyWord?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'data', 'error')} ">
	<label for="data">
		<g:message code="keyWord.data.label" default="Data" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${keyWordInstance?.data?}" var="d">
    <li><g:link controller="commonDataProject" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commonDataProject" action="create" params="['keyWord.id': keyWordInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commonDataProject.label', default: 'CommonDataProject')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: keyWordInstance, field: 'subKeyWords', 'error')} ">
	<label for="subKeyWords">
		<g:message code="keyWord.subKeyWords.label" default="Sub Key Words" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${keyWordInstance?.subKeyWords?}" var="s">
    <li><g:link controller="keyWord" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="keyWord" action="create" params="['keyWord.id': keyWordInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'keyWord.label', default: 'KeyWord')])}</g:link>
</li>
</ul>


</div>

