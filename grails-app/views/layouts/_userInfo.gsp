<div style="margin-top: 2px" id="userInfo" class="content scaffold-list">
    <table>
        <tr>
            <td>当前日期</td>
            <td colspan="2">${new Date()}</td>
        </tr>
        <tr>
            <td>当前用户</td>
            <td>${session?.user?.userName}/${session?.user?.role?.roleName}</td>
            <td>
                <g:if test="${session.user}">
                    <!--a href='javascript:logout("/${grails.util.Metadata.current.'app.name'}/home/logout", "${session?.user?.userName}")'>
                    退出系统
                    </a-->
                    <g:link controller="home" action="logout">退出系统</g:link>
                </g:if>
                <g:else>
                    <a href='javascript:login("/${grails.util.Metadata.current.'app.name'}/home/login")'>登录</a>
                </g:else>
            </td>
        </tr>
        <tr>
            <td>当前在线</td>
            <td colspan="2">${session?.onlineCount}人</td>
        </tr>
    </table>
</div>
