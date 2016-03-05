package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentPropertyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponentProperty.list(params), model:[gasComponentPropertyInstanceCount: GasComponentProperty.count()]
    }

    def show(GasComponentProperty gasComponentPropertyInstance) {
        respond gasComponentPropertyInstance
    }

    def create() {
        respond new GasComponentProperty(params)
    }

    @Transactional
    def save(GasComponentProperty gasComponentPropertyInstance) {
        if (gasComponentPropertyInstance == null) {
            notFound()
            return
        }

        if (gasComponentPropertyInstance.hasErrors()) {
            respond gasComponentPropertyInstance.errors, view:'create'
            return
        }

        gasComponentPropertyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponentProperty.label', default: 'GasComponentProperty'), gasComponentPropertyInstance.id])
                redirect gasComponentPropertyInstance
            }
            '*' { respond gasComponentPropertyInstance, [status: CREATED] }
        }
    }

    def edit(GasComponentProperty gasComponentPropertyInstance) {
        respond gasComponentPropertyInstance
    }

    @Transactional
    def update(GasComponentProperty gasComponentPropertyInstance) {
        if (gasComponentPropertyInstance == null) {
            notFound()
            return
        }

        if (gasComponentPropertyInstance.hasErrors()) {
            respond gasComponentPropertyInstance.errors, view:'edit'
            return
        }

        gasComponentPropertyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponentProperty.label', default: 'GasComponentProperty'), gasComponentPropertyInstance.id])
                redirect gasComponentPropertyInstance
            }
            '*'{ respond gasComponentPropertyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponentProperty gasComponentPropertyInstance) {

        if (gasComponentPropertyInstance == null) {
            notFound()
            return
        }

        gasComponentPropertyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponentProperty.label', default: 'GasComponentProperty'), gasComponentPropertyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponentProperty.label', default: 'GasComponentProperty'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
