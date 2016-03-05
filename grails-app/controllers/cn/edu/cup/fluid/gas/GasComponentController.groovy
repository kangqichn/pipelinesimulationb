package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponent.list(params), model:[gasComponentInstanceCount: GasComponent.count()]
    }

    def show(GasComponent gasComponentInstance) {
        respond gasComponentInstance
    }

    def create() {
        respond new GasComponent(params)
    }

    @Transactional
    def save(GasComponent gasComponentInstance) {
        if (gasComponentInstance == null) {
            notFound()
            return
        }

        if (gasComponentInstance.hasErrors()) {
            respond gasComponentInstance.errors, view:'create'
            return
        }

        gasComponentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponent.label', default: 'GasComponent'), gasComponentInstance.id])
                redirect gasComponentInstance
            }
            '*' { respond gasComponentInstance, [status: CREATED] }
        }
    }

    def edit(GasComponent gasComponentInstance) {
        respond gasComponentInstance
    }

    @Transactional
    def update(GasComponent gasComponentInstance) {
        if (gasComponentInstance == null) {
            notFound()
            return
        }

        if (gasComponentInstance.hasErrors()) {
            respond gasComponentInstance.errors, view:'edit'
            return
        }

        gasComponentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponent.label', default: 'GasComponent'), gasComponentInstance.id])
                redirect gasComponentInstance
            }
            '*'{ respond gasComponentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponent gasComponentInstance) {

        if (gasComponentInstance == null) {
            notFound()
            return
        }

        gasComponentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponent.label', default: 'GasComponent'), gasComponentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponent.label', default: 'GasComponent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
