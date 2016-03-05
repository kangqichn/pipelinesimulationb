package cn.edu.cup.ogts.equipment



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompressorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Compressor.list(params), model:[compressorInstanceCount: Compressor.count()]
    }

    def show(Compressor compressorInstance) {
        respond compressorInstance
    }

    def create() {
        respond new Compressor(params)
    }

    @Transactional
    def save(Compressor compressorInstance) {
        if (compressorInstance == null) {
            notFound()
            return
        }

        if (compressorInstance.hasErrors()) {
            respond compressorInstance.errors, view:'create'
            return
        }

        compressorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'compressor.label', default: 'Compressor'), compressorInstance.id])
                redirect compressorInstance
            }
            '*' { respond compressorInstance, [status: CREATED] }
        }
    }

    def edit(Compressor compressorInstance) {
        respond compressorInstance
    }

    @Transactional
    def update(Compressor compressorInstance) {
        if (compressorInstance == null) {
            notFound()
            return
        }

        if (compressorInstance.hasErrors()) {
            respond compressorInstance.errors, view:'edit'
            return
        }

        compressorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Compressor.label', default: 'Compressor'), compressorInstance.id])
                redirect compressorInstance
            }
            '*'{ respond compressorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Compressor compressorInstance) {

        if (compressorInstance == null) {
            notFound()
            return
        }

        compressorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Compressor.label', default: 'Compressor'), compressorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'compressor.label', default: 'Compressor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
