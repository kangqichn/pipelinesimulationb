package cn.edu.cup.commondata



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CommonDataProjectController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CommonDataProject.list(params), model:[commonDataProjectInstanceCount: CommonDataProject.count()]
    }

    def show(CommonDataProject commonDataProjectInstance) {
        respond commonDataProjectInstance
    }

    def create() {
        respond new CommonDataProject(params)
    }

    @Transactional
    def save(CommonDataProject commonDataProjectInstance) {
        if (commonDataProjectInstance == null) {
            notFound()
            return
        }

        if (commonDataProjectInstance.hasErrors()) {
            respond commonDataProjectInstance.errors, view:'create'
            return
        }

        commonDataProjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'commonDataProject.label', default: 'CommonDataProject'), commonDataProjectInstance.id])
                redirect commonDataProjectInstance
            }
            '*' { respond commonDataProjectInstance, [status: CREATED] }
        }
    }

    def edit(CommonDataProject commonDataProjectInstance) {
        respond commonDataProjectInstance
    }

    @Transactional
    def update(CommonDataProject commonDataProjectInstance) {
        if (commonDataProjectInstance == null) {
            notFound()
            return
        }

        if (commonDataProjectInstance.hasErrors()) {
            respond commonDataProjectInstance.errors, view:'edit'
            return
        }

        commonDataProjectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CommonDataProject.label', default: 'CommonDataProject'), commonDataProjectInstance.id])
                redirect commonDataProjectInstance
            }
            '*'{ respond commonDataProjectInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CommonDataProject commonDataProjectInstance) {

        if (commonDataProjectInstance == null) {
            notFound()
            return
        }

        commonDataProjectInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CommonDataProject.label', default: 'CommonDataProject'), commonDataProjectInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'commonDataProject.label', default: 'CommonDataProject'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
