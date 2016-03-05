package cn.edu.cup.system



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SystemLogController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SystemLog.list(params), model:[systemLogInstanceCount: SystemLog.count()]
    }

    def show(SystemLog systemLogInstance) {
        respond systemLogInstance
    }

    def create() {
        respond new SystemLog(params)
    }

    @Transactional
    def save(SystemLog systemLogInstance) {
        if (systemLogInstance == null) {
            notFound()
            return
        }

        if (systemLogInstance.hasErrors()) {
            respond systemLogInstance.errors, view:'create'
            return
        }

        systemLogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'systemLog.label', default: 'SystemLog'), systemLogInstance.id])
                redirect systemLogInstance
            }
            '*' { respond systemLogInstance, [status: CREATED] }
        }
    }

    def edit(SystemLog systemLogInstance) {
        respond systemLogInstance
    }

    @Transactional
    def update(SystemLog systemLogInstance) {
        if (systemLogInstance == null) {
            notFound()
            return
        }

        if (systemLogInstance.hasErrors()) {
            respond systemLogInstance.errors, view:'edit'
            return
        }

        systemLogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SystemLog.label', default: 'SystemLog'), systemLogInstance.id])
                redirect systemLogInstance
            }
            '*'{ respond systemLogInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SystemLog systemLogInstance) {

        if (systemLogInstance == null) {
            notFound()
            return
        }

        systemLogInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SystemLog.label', default: 'SystemLog'), systemLogInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemLog.label', default: 'SystemLog'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
