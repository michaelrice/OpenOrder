package openorder

class ButtonMakerTagLib {

    def makeButton = { atters, body ->
        def btnType = atters.btnType
        def msg = atters.message
        if (btnType == "default") {
            out << "${g.submitButton(name: 'create', class: 'btn btn-lg btn-primary', value: msg)} "
        }
        else if (btnType == "delete") {
            out << "${g.submitButton(name: 'create', class: 'btn btn-lg btn-danger', value: msg)} "
        }
    }
}
