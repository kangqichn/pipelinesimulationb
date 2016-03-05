package cn.edu.cup.ogts.equipment



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompressorTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompressorType.list(params), model:[compressorTypeInstanceCount: CompressorType.count()]
    }

    def show(CompressorType compressorTypeInstance) {
        respond compressorTypeInstance
    }

    def create() {
        respond new CompressorType(params)
    }

    @Transactional
    def save(CompressorType compressorTypeInstance) {
        if (compressorTypeInstance == null) {
            notFound()
            return
        }

        if (compressorTypeInstance.hasErrors()) {
            respond compressorTypeInstance.errors, view:'create'
            return
        }

        compressorTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'compressorType.label', default: 'CompressorType'), compressorTypeInstance.id])
                redirect compressorTypeInstance
            }
            '*' { respond compressorTypeInstance, [status: CREATED] }
        }
    }

    def edit(CompressorType compressorTypeInstance) {
        respond compressorTypeInstance
    }

    @Transactional
    def update(CompressorType compressorTypeInstance) {
        if (compressorTypeInstance == null) {
            notFound()
            return
        }

        if (compressorTypeInstance.hasErrors()) {
            respond compressorTypeInstance.errors, view:'edit'
            return
        }

        compressorTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CompressorType.label', default: 'CompressorType'), compressorTypeInstance.id])
                redirect compressorTypeInstance
            }
            '*'{ respond compressorTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CompressorType compressorTypeInstance) {

        if (compressorTypeInstance == null) {
            notFound()
            return
        }

        compressorTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CompressorType.label', default: 'CompressorType'), compressorTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'compressorType.label', default: 'CompressorType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
