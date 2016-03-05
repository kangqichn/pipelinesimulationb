package cn.edu.cup.producing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BlockController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Block.list(params), model:[blockInstanceCount: Block.count()]
    }

    def show(Block blockInstance) {
        respond blockInstance
    }

    def create() {
        respond new Block(params)
    }

    @Transactional
    def save(Block blockInstance) {
        if (blockInstance == null) {
            notFound()
            return
        }

        if (blockInstance.hasErrors()) {
            respond blockInstance.errors, view:'create'
            return
        }

        blockInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'block.label', default: 'Block'), blockInstance.id])
                redirect blockInstance
            }
            '*' { respond blockInstance, [status: CREATED] }
        }
    }

    def edit(Block blockInstance) {
        respond blockInstance
    }

    @Transactional
    def update(Block blockInstance) {
        if (blockInstance == null) {
            notFound()
            return
        }

        if (blockInstance.hasErrors()) {
            respond blockInstance.errors, view:'edit'
            return
        }

        blockInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Block.label', default: 'Block'), blockInstance.id])
                redirect blockInstance
            }
            '*'{ respond blockInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Block blockInstance) {

        if (blockInstance == null) {
            notFound()
            return
        }

        blockInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Block.label', default: 'Block'), blockInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'block.label', default: 'Block'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
