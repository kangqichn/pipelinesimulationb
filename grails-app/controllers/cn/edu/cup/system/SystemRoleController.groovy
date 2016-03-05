package cn.edu.cup.system



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemRoleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemRole.list(params), model:[systemRoleInstanceCount: SystemRole.count()]
    }

    def show(SystemRole systemRoleInstance) {
        respond systemRoleInstance
    }

    def create() {
        respond new SystemRole(params)
    }

    @Transactional
    def save(SystemRole systemRoleInstance) {
        if (systemRoleInstance == null) {
            notFound()
            return
        }

        if (systemRoleInstance.hasErrors()) {
            respond systemRoleInstance.errors, view:'create'
            return
        }

        systemRoleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemRole.label', default: 'SystemRole'), systemRoleInstance.id])
                redirect systemRoleInstance
            }
            '*' { respond systemRoleInstance, [status: CREATED] }
        }
    }

    def edit(SystemRole systemRoleInstance) {
        respond systemRoleInstance
    }

    @Transactional
    def update(SystemRole systemRoleInstance) {
        if (systemRoleInstance == null) {
            notFound()
            return
        }

        if (systemRoleInstance.hasErrors()) {
            respond systemRoleInstance.errors, view:'edit'
            return
        }

        systemRoleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemRole.label', default: 'SystemRole'), systemRoleInstance.id])
                redirect systemRoleInstance
            }
            '*'{ respond systemRoleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemRole systemRoleInstance) {

        if (systemRoleInstance == null) {
            notFound()
            return
        }

        systemRoleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SystemRole.label', default: 'SystemRole'), systemRoleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemRole.label', default: 'SystemRole'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
