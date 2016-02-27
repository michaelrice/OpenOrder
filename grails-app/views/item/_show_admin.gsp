<hr class="col-xs-12">
<g:form class="col-xs-12" url="[resource: itemInstance, action: 'delete']" method="DELETE">
    <fieldset class="buttons">
        <g:link class="btn btn-info btn-group-lg" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label"
                                                                                                      default="Edit"/></g:link>
        <g:actionSubmit class="btn btn-group-lg btn-danger" action="delete"
                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </fieldset>
</g:form>
<g:link action="create" name="Add Item" class="col-xs-6" >Add Item</g:link>

