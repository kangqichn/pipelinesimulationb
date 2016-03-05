package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComponentFactorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ComponentFactor.list(params), model:[componentFactorInstanceCount: ComponentFactor.count()]
    }

    def show(ComponentFactor componentFactorInstance) {
        respond componentFactorInstance
    }

    def create() {
        respond new ComponentFactor(params)
    }

    @Transactional
    def save(ComponentFactor componentFactorInstance) {
        if (componentFactorInstance == null) {
            notFound()
            return
        }

        if (componentFactorInstance.hasErrors()) {
            respond componentFactorInstance.errors, view:'create'
            return
        }

        componentFactorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'componentFactor.label', default: 'ComponentFactor'), componentFactorInstance.id])
                redirect componentFactorInstance
            }
            '*' { respond componentFactorInstance, [status: CREATED] }
        }
    }

    def edit(ComponentFactor componentFactorInstance) {
        respond componentFactorInstance
    }

    @Transactional
    def update(ComponentFactor componentFactorInstance) {
        if (componentFactorInstance == null) {
            notFound()
            return
        }

        if (componentFactorInstance.hasErrors()) {
            respond componentFactorInstance.errors, view:'edit'
            return
        }

        componentFactorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ComponentFactor.label', default: 'ComponentFactor'), componentFactorInstance.id])
                redirect componentFactorInstance
            }
            '*'{ respond componentFactorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ComponentFactor componentFactorInstance) {

        if (componentFactorInstance == null) {
            notFound()
            return
        }

        componentFactorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ComponentFactor.label', default: 'ComponentFactor'), componentFactorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'componentFactor.label', default: 'ComponentFactor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
