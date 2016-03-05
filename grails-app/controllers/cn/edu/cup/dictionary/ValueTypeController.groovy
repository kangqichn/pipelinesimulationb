package cn.edu.cup.dictionary



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ValueTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ValueType.list(params), model:[valueTypeInstanceCount: ValueType.count()]
    }

    def show(ValueType valueTypeInstance) {
        respond valueTypeInstance
    }

    def create() {
        respond new ValueType(params)
    }

    @Transactional
    def save(ValueType valueTypeInstance) {
        if (valueTypeInstance == null) {
            notFound()
            return
        }

        if (valueTypeInstance.hasErrors()) {
            respond valueTypeInstance.errors, view:'create'
            return
        }

        valueTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'valueType.label', default: 'ValueType'), valueTypeInstance.id])
                redirect valueTypeInstance
            }
            '*' { respond valueTypeInstance, [status: CREATED] }
        }
    }

    def edit(ValueType valueTypeInstance) {
        respond valueTypeInstance
    }

    @Transactional
    def update(ValueType valueTypeInstance) {
        if (valueTypeInstance == null) {
            notFound()
            return
        }

        if (valueTypeInstance.hasErrors()) {
            respond valueTypeInstance.errors, view:'edit'
            return
        }

        valueTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ValueType.label', default: 'ValueType'), valueTypeInstance.id])
                redirect valueTypeInstance
            }
            '*'{ respond valueTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ValueType valueTypeInstance) {

        if (valueTypeInstance == null) {
            notFound()
            return
        }

        valueTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ValueType.label', default: 'ValueType'), valueTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'valueType.label', default: 'ValueType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
