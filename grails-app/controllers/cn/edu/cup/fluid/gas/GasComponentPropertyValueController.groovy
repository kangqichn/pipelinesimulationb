package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentPropertyValueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponentPropertyValue.list(params), model:[gasComponentPropertyValueInstanceCount: GasComponentPropertyValue.count()]
    }

    def show(GasComponentPropertyValue gasComponentPropertyValueInstance) {
        respond gasComponentPropertyValueInstance
    }

    def create() {
        respond new GasComponentPropertyValue(params)
    }

    @Transactional
    def save(GasComponentPropertyValue gasComponentPropertyValueInstance) {
        if (gasComponentPropertyValueInstance == null) {
            notFound()
            return
        }

        if (gasComponentPropertyValueInstance.hasErrors()) {
            respond gasComponentPropertyValueInstance.errors, view:'create'
            return
        }

        gasComponentPropertyValueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponentPropertyValue.label', default: 'GasComponentPropertyValue'), gasComponentPropertyValueInstance.id])
                redirect gasComponentPropertyValueInstance
            }
            '*' { respond gasComponentPropertyValueInstance, [status: CREATED] }
        }
    }

    def edit(GasComponentPropertyValue gasComponentPropertyValueInstance) {
        respond gasComponentPropertyValueInstance
    }

    @Transactional
    def update(GasComponentPropertyValue gasComponentPropertyValueInstance) {
        if (gasComponentPropertyValueInstance == null) {
            notFound()
            return
        }

        if (gasComponentPropertyValueInstance.hasErrors()) {
            respond gasComponentPropertyValueInstance.errors, view:'edit'
            return
        }

        gasComponentPropertyValueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponentPropertyValue.label', default: 'GasComponentPropertyValue'), gasComponentPropertyValueInstance.id])
                redirect gasComponentPropertyValueInstance
            }
            '*'{ respond gasComponentPropertyValueInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponentPropertyValue gasComponentPropertyValueInstance) {

        if (gasComponentPropertyValueInstance == null) {
            notFound()
            return
        }

        gasComponentPropertyValueInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponentPropertyValue.label', default: 'GasComponentPropertyValue'), gasComponentPropertyValueInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponentPropertyValue.label', default: 'GasComponentPropertyValue'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
