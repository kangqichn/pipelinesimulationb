package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComponentFactorTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ComponentFactorType.list(params), model:[componentFactorTypeInstanceCount: ComponentFactorType.count()]
    }

    def show(ComponentFactorType componentFactorTypeInstance) {
        respond componentFactorTypeInstance
    }

    def create() {
        respond new ComponentFactorType(params)
    }

    @Transactional
    def save(ComponentFactorType componentFactorTypeInstance) {
        if (componentFactorTypeInstance == null) {
            notFound()
            return
        }

        if (componentFactorTypeInstance.hasErrors()) {
            respond componentFactorTypeInstance.errors, view:'create'
            return
        }

        componentFactorTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'componentFactorType.label', default: 'ComponentFactorType'), componentFactorTypeInstance.id])
                redirect componentFactorTypeInstance
            }
            '*' { respond componentFactorTypeInstance, [status: CREATED] }
        }
    }

    def edit(ComponentFactorType componentFactorTypeInstance) {
        respond componentFactorTypeInstance
    }

    @Transactional
    def update(ComponentFactorType componentFactorTypeInstance) {
        if (componentFactorTypeInstance == null) {
            notFound()
            return
        }

        if (componentFactorTypeInstance.hasErrors()) {
            respond componentFactorTypeInstance.errors, view:'edit'
            return
        }

        componentFactorTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ComponentFactorType.label', default: 'ComponentFactorType'), componentFactorTypeInstance.id])
                redirect componentFactorTypeInstance
            }
            '*'{ respond componentFactorTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ComponentFactorType componentFactorTypeInstance) {

        if (componentFactorTypeInstance == null) {
            notFound()
            return
        }

        componentFactorTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ComponentFactorType.label', default: 'ComponentFactorType'), componentFactorTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'componentFactorType.label', default: 'ComponentFactorType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
