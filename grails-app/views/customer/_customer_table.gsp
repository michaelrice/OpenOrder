<table class="table table-striped">
    <thead>
    <tr class="info">

        <g:sortableColumn property="username"
                          title="${message(code: 'customer.username.label', default: 'Username')}"/>

        <g:sortableColumn property="accountExpired"
                          title="${message(code: 'customer.accountExpired.label', default: 'Account Expired')}"/>

        <g:sortableColumn property="accountLocked"
                          title="${message(code: 'customer.accountLocked.label', default: 'Account Locked')}"/>

        <g:sortableColumn property="enabled"
                          title="${message(code: 'customer.enabled.label', default: 'Enabled')}"/>

        <g:sortableColumn property="passwordExpired"
                          title="${message(code: 'customer.passwordExpired.label', default: 'Password Expired')}"/>
        <g:sortableColumn property="role" title="Roles" />

    </tr>
    </thead>
    <tbody>
    <g:if test="${custLoop == true}">
        <g:each in="${customerInstanceList}" status="i" var="customerInstance">
            <tr>
                <td><g:link action="show"
                            id="${customerInstance.id}">${fieldValue(bean: customerInstance, field: "username")}</g:link></td>

                <td><g:formatBoolean boolean="${customerInstance.accountExpired}"/></td>

                <td><g:formatBoolean boolean="${customerInstance.accountLocked}"/></td>

                <td><g:formatBoolean boolean="${customerInstance.enabled}"/></td>

                <td><g:formatBoolean boolean="${customerInstance.passwordExpired}"/></td>
                <g:if test="${customerInstance.getAuthorities().size() != 0}">
                    <g:each in="${customerInstance.getAuthorities()}">
                        <td>${it.authority}</td>
                    </g:each>
                </g:if>
                <g:else>
                    <td>None</td>
                </g:else>

            </tr>
        </g:each>
    </g:if>
    <g:else>
        <tr>
            <td><g:link action="show"
                            id="${customerInstance.id}">${fieldValue(bean: customerInstance, field: "username")}</g:link></td>

            <td><g:formatBoolean boolean="${customerInstance.accountExpired}"/></td>

            <td><g:formatBoolean boolean="${customerInstance.accountLocked}"/></td>

            <td><g:formatBoolean boolean="${customerInstance.enabled}"/></td>

            <td><g:formatBoolean boolean="${customerInstance.passwordExpired}"/></td>
            <g:if test="${customerInstance.getAuthorities().size() != 0}">
            <g:each in="${customerInstance.getAuthorities()}">
                <td>${it.authority}</td>
            </g:each>
            </g:if>
            <g:else>
                <td>None</td>
            </g:else>

        </tr>
    </g:else>
    </tbody>
</table>
