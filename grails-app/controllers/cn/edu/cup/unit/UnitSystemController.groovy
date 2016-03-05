package cn.edu.cup.unit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitSystemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitSystem.list(params), model:[unitSystemInstanceCount: UnitSystem.count()]
    }

    def show(UnitSystem unitSystemInstance) {
        respond unitSystemInstance
    }

    def create() {
        respond new UnitSystem(params)
    }

    @Transactional
    def save(UnitSystem unitSystemInstance) {
        if (unitSystemInstance == null) {
            notFound()
            return
        }

        if (unitSystemInstance.hasErrors()) {
            respond unitSystemInstance.errors, view:'create'
            return
        }

        unitSystemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitSystem.label', default: 'UnitSystem'), unitSystemInstance.id])
                redirect unitSystemInstance
            }
            '*' { respond unitSystemInstance, [status: CREATED] }
        }
    }

    def edit(UnitSystem unitSystemInstance) {
        respond unitSystemInstance
    }

    @Transactional
    def update(UnitSystem unitSystemInstance) {
        if (unitSystemInstance == null) {
            notFound()
            return
        }

        if (unitSystemInstance.hasErrors()) {
            respond unitSystemInstance.errors, view:'edit'
            return
        }

        unitSystemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitSystem.label', default: 'UnitSystem'), unitSystemInstance.id])
                redirect unitSystemInstance
            }
            '*'{ respond unitSystemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitSystem unitSystemInstance) {

        if (unitSystemInstance == null) {
            notFound()
            return
        }

        unitSystemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitSystem.label', default: 'UnitSystem'), unitSystemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitSystem.label', default: 'UnitSystem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
