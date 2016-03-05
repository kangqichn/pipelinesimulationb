<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="main">
        <title>上传Excel文件</title>
    </head>
    <body>
        <div id="list-testDataA" class="content scaffold-list" role="main">
            <h1>${procedure.name}——请确认Excel文件中数据符合以下顺序：</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">
                    ${flash.message}
                </div>
            </g:if>
            <g:render template="${procedure.templateName}"/>
            <div class="pagination">
                <hr>
                <g:uploadForm controller="file" action="doUploadExcelFile">
                    <g:hiddenField name="stepid" value="${procedure.id}" />
                    <span>
                        请选择一个Excel文件<input type="file" name="uploadedFile" />
                    </span>
                    <g:submitButton name="upload" value="导入"/>
                </g:uploadForm>
                <g:if test="${template}">
                    <hr>
                    <h1>如有疑问，可先下载模板文件：</h1>
                    <h1><a href="propertyDataTools/download?filename=${template}">下载Excel文件的模板</a></h1>
                    <hr>
                </g:if>
            </div>
        </div>
    </body>
</html>
