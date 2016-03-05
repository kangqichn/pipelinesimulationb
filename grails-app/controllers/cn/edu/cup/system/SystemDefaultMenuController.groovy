package cn.edu.cup.system



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemDefaultMenuController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemDefaultMenu.list(params), model:[systemDefaultMenuInstanceCount: SystemDefaultMenu.count()]
    }

    def show(SystemDefaultMenu systemDefaultMenuInstance) {
        respond systemDefaultMenuInstance
    }

    def create() {
        respond new SystemDefaultMenu(params)
    }

    @Transactional
    def save(SystemDefaultMenu systemDefaultMenuInstance) {
        if (systemDefaultMenuInstance == null) {
            notFound()
            return
        }

        if (systemDefaultMenuInstance.hasErrors()) {
            respond systemDefaultMenuInstance.errors, view:'create'
            return
        }

        systemDefaultMenuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemDefaultMenu.label', default: 'SystemDefaultMenu'), systemDefaultMenuInstance.id])
                redirect systemDefaultMenuInstance
            }
            '*' { respond systemDefaultMenuInstance, [status: CREATED] }
        }
    }

    def edit(SystemDefaultMenu systemDefaultMenuInstance) {
        respond systemDefaultMenuInstance
    }

    @Transactional
    def update(SystemDefaultMenu systemDefaultMenuInstance) {
        if (systemDefaultMenuInstance == null) {
            notFound()
            return
        }

        if (systemDefaultMenuInstance.hasErrors()) {
            respond systemDefaultMenuInstance.errors, view:'edit'
            return
        }

        systemDefaultMenuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemDefaultMenu.label', default: 'SystemDefaultMenu'), systemDefaultMenuInstance.id])
                redirect systemDefaultMenuInstance
            }
            '*'{ respond systemDefaultMenuInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemDefaultMenu systemDefaultMenuInstance) {

        if (systemDefaultMenuInstance == null) {
            notFound()
            return
        }

        systemDefaultMenuInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SystemDefaultMenu.label', default: 'SystemDefaultMenu'), systemDefaultMenuInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemDefaultMenu.label', default: 'SystemDefaultMenu'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
