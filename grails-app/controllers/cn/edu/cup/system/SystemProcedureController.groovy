package cn.edu.cup.system



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemProcedureController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemProcedure.list(params), model:[systemProcedureInstanceCount: SystemProcedure.count()]
    }

    def show(SystemProcedure systemProcedureInstance) {
        respond systemProcedureInstance
    }

    def create() {
        respond new SystemProcedure(params)
    }

    @Transactional
    def save(SystemProcedure systemProcedureInstance) {
        if (systemProcedureInstance == null) {
            notFound()
            return
        }

        if (systemProcedureInstance.hasErrors()) {
            respond systemProcedureInstance.errors, view:'create'
            return
        }

        systemProcedureInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemProcedure.label', default: 'SystemProcedure'), systemProcedureInstance.id])
                redirect systemProcedureInstance
            }
            '*' { respond systemProcedureInstance, [status: CREATED] }
        }
    }

    def edit(SystemProcedure systemProcedureInstance) {
        respond systemProcedureInstance
    }

    @Transactional
    def update(SystemProcedure systemProcedureInstance) {
        if (systemProcedureInstance == null) {
            notFound()
            return
        }

        if (systemProcedureInstance.hasErrors()) {
            respond systemProcedureInstance.errors, view:'edit'
            return
        }

        systemProcedureInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemProcedure.label', default: 'SystemProcedure'), systemProcedureInstance.id])
                redirect systemProcedureInstance
            }
            '*'{ respond systemProcedureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemProcedure systemProcedureInstance) {

        if (systemProcedureInstance == null) {
            notFound()
            return
        }

        systemProcedureInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SystemProcedure.label', default: 'SystemProcedure'), systemProcedureInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemProcedure.label', default: 'SystemProcedure'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
