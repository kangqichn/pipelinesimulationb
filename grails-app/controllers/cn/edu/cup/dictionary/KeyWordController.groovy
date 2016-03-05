package cn.edu.cup.dictionary



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class KeyWordController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond KeyWord.list(params), model:[keyWordInstanceCount: KeyWord.count()]
    }

    def show(KeyWord keyWordInstance) {
        respond keyWordInstance
    }

    def create() {
        respond new KeyWord(params)
    }

    @Transactional
    def save(KeyWord keyWordInstance) {
        if (keyWordInstance == null) {
            notFound()
            return
        }

        if (keyWordInstance.hasErrors()) {
            respond keyWordInstance.errors, view:'create'
            return
        }

        keyWordInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'keyWord.label', default: 'KeyWord'), keyWordInstance.id])
                redirect keyWordInstance
            }
            '*' { respond keyWordInstance, [status: CREATED] }
        }
    }

    def edit(KeyWord keyWordInstance) {
        respond keyWordInstance
    }

    @Transactional
    def update(KeyWord keyWordInstance) {
        if (keyWordInstance == null) {
            notFound()
            return
        }

        if (keyWordInstance.hasErrors()) {
            respond keyWordInstance.errors, view:'edit'
            return
        }

        keyWordInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'KeyWord.label', default: 'KeyWord'), keyWordInstance.id])
                redirect keyWordInstance
            }
            '*'{ respond keyWordInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(KeyWord keyWordInstance) {

        if (keyWordInstance == null) {
            notFound()
            return
        }

        keyWordInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'KeyWord.label', default: 'KeyWord'), keyWordInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'keyWord.label', default: 'KeyWord'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
