package cn.edu.cup.unit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PhysicalQuantityController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PhysicalQuantity.list(params), model:[physicalQuantityInstanceCount: PhysicalQuantity.count()]
    }

    def show(PhysicalQuantity physicalQuantityInstance) {
        respond physicalQuantityInstance
    }

    def create() {
        respond new PhysicalQuantity(params)
    }

    @Transactional
    def save(PhysicalQuantity physicalQuantityInstance) {
        if (physicalQuantityInstance == null) {
            notFound()
            return
        }

        if (physicalQuantityInstance.hasErrors()) {
            respond physicalQuantityInstance.errors, view:'create'
            return
        }

        physicalQuantityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'physicalQuantity.label', default: 'PhysicalQuantity'), physicalQuantityInstance.id])
                redirect physicalQuantityInstance
            }
            '*' { respond physicalQuantityInstance, [status: CREATED] }
        }
    }

    def edit(PhysicalQuantity physicalQuantityInstance) {
        respond physicalQuantityInstance
    }

    @Transactional
    def update(PhysicalQuantity physicalQuantityInstance) {
        if (physicalQuantityInstance == null) {
            notFound()
            return
        }

        if (physicalQuantityInstance.hasErrors()) {
            respond physicalQuantityInstance.errors, view:'edit'
            return
        }

        physicalQuantityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PhysicalQuantity.label', default: 'PhysicalQuantity'), physicalQuantityInstance.id])
                redirect physicalQuantityInstance
            }
            '*'{ respond physicalQuantityInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PhysicalQuantity physicalQuantityInstance) {

        if (physicalQuantityInstance == null) {
            notFound()
            return
        }

        physicalQuantityInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PhysicalQuantity.label', default: 'PhysicalQuantity'), physicalQuantityInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'physicalQuantity.label', default: 'PhysicalQuantity'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
