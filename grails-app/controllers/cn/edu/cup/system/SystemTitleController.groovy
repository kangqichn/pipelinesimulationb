package cn.edu.cup.system



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemTitleController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemTitle.list(params), model:[systemTitleInstanceCount: SystemTitle.count()]
    }

    def show(SystemTitle systemTitleInstance) {
        respond systemTitleInstance
    }

    def create() {
        respond new SystemTitle(params)
    }

    @Transactional
    def save(SystemTitle systemTitleInstance) {
        if (systemTitleInstance == null) {
            notFound()
            return
        }

        if (systemTitleInstance.hasErrors()) {
            respond systemTitleInstance.errors, view:'create'
            return
        }

        systemTitleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemTitle.label', default: 'SystemTitle'), systemTitleInstance.id])
                redirect systemTitleInstance
            }
            '*' { respond systemTitleInstance, [status: CREATED] }
        }
    }

    def edit(SystemTitle systemTitleInstance) {
        respond systemTitleInstance
    }

    @Transactional
    def update(SystemTitle systemTitleInstance) {
        if (systemTitleInstance == null) {
            notFound()
            return
        }

        if (systemTitleInstance.hasErrors()) {
            respond systemTitleInstance.errors, view:'edit'
            return
        }

        systemTitleInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemTitle.label', default: 'SystemTitle'), systemTitleInstance.id])
                redirect systemTitleInstance
            }
            '*'{ respond systemTitleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemTitle systemTitleInstance) {

        if (systemTitleInstance == null) {
            notFound()
            return
        }

        systemTitleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SystemTitle.label', default: 'SystemTitle'), systemTitleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemTitle.label', default: 'SystemTitle'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
