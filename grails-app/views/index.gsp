<!DOCTYPE html>
<html>
    <head>
        <!--meta name="layout" content="main"/-->
        <title>Welcome to Grails</title>
    </head>
    <body>
        <% response.sendRedirect("/${grails.util.Metadata.current.'app.name'}/home");%>
    </body>
</html>
