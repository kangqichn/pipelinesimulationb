package cn.edu.cup.system



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemMenuController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemMenu.list(params), model:[systemMenuInstanceCount: SystemMenu.count()]
    }

    def show(SystemMenu systemMenuInstance) {
        respond systemMenuInstance
    }

    def create() {
        respond new SystemMenu(params)
    }

    @Transactional
    def save(SystemMenu systemMenuInstance) {
        if (systemMenuInstance == null) {
            notFound()
            return
        }

        if (systemMenuInstance.hasErrors()) {
            respond systemMenuInstance.errors, view:'create'
            return
        }

        systemMenuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemMenu.label', default: 'SystemMenu'), systemMenuInstance.id])
                redirect systemMenuInstance
            }
            '*' { respond systemMenuInstance, [status: CREATED] }
        }
    }

    def edit(SystemMenu systemMenuInstance) {
        respond systemMenuInstance
    }

    @Transactional
    def update(SystemMenu systemMenuInstance) {
        if (systemMenuInstance == null) {
            notFound()
            return
        }

        if (systemMenuInstance.hasErrors()) {
            respond systemMenuInstance.errors, view:'edit'
            return
        }

        systemMenuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemMenu.label', default: 'SystemMenu'), systemMenuInstance.id])
                redirect systemMenuInstance
            }
            '*'{ respond systemMenuInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemMenu systemMenuInstance) {

        if (systemMenuInstance == null) {
            notFound()
            return
        }

        systemMenuInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SystemMenu.label', default: 'SystemMenu'), systemMenuInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemMenu.label', default: 'SystemMenu'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
