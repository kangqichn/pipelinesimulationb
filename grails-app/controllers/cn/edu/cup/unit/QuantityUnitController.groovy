package cn.edu.cup.unit



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuantityUnitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond QuantityUnit.list(params), model:[quantityUnitInstanceCount: QuantityUnit.count()]
    }

    def show(QuantityUnit quantityUnitInstance) {
        respond quantityUnitInstance
    }

    def create() {
        respond new QuantityUnit(params)
    }

    @Transactional
    def save(QuantityUnit quantityUnitInstance) {
        if (quantityUnitInstance == null) {
            notFound()
            return
        }

        if (quantityUnitInstance.hasErrors()) {
            respond quantityUnitInstance.errors, view:'create'
            return
        }

        quantityUnitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'quantityUnit.label', default: 'QuantityUnit'), quantityUnitInstance.id])
                redirect quantityUnitInstance
            }
            '*' { respond quantityUnitInstance, [status: CREATED] }
        }
    }

    def edit(QuantityUnit quantityUnitInstance) {
        respond quantityUnitInstance
    }

    @Transactional
    def update(QuantityUnit quantityUnitInstance) {
        if (quantityUnitInstance == null) {
            notFound()
            return
        }

        if (quantityUnitInstance.hasErrors()) {
            respond quantityUnitInstance.errors, view:'edit'
            return
        }

        quantityUnitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'QuantityUnit.label', default: 'QuantityUnit'), quantityUnitInstance.id])
                redirect quantityUnitInstance
            }
            '*'{ respond quantityUnitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(QuantityUnit quantityUnitInstance) {

        if (quantityUnitInstance == null) {
            notFound()
            return
        }

        quantityUnitInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'QuantityUnit.label', default: 'QuantityUnit'), quantityUnitInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'quantityUnit.label', default: 'QuantityUnit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
