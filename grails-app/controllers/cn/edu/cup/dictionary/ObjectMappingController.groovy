package cn.edu.cup.dictionary



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ObjectMappingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ObjectMapping.list(params), model:[objectMappingInstanceCount: ObjectMapping.count()]
    }

    def show(ObjectMapping objectMappingInstance) {
        respond objectMappingInstance
    }

    def create() {
        respond new ObjectMapping(params)
    }

    @Transactional
    def save(ObjectMapping objectMappingInstance) {
        if (objectMappingInstance == null) {
            notFound()
            return
        }

        if (objectMappingInstance.hasErrors()) {
            respond objectMappingInstance.errors, view:'create'
            return
        }

        objectMappingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'objectMapping.label', default: 'ObjectMapping'), objectMappingInstance.id])
                redirect objectMappingInstance
            }
            '*' { respond objectMappingInstance, [status: CREATED] }
        }
    }

    def edit(ObjectMapping objectMappingInstance) {
        respond objectMappingInstance
    }

    @Transactional
    def update(ObjectMapping objectMappingInstance) {
        if (objectMappingInstance == null) {
            notFound()
            return
        }

        if (objectMappingInstance.hasErrors()) {
            respond objectMappingInstance.errors, view:'edit'
            return
        }

        objectMappingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ObjectMapping.label', default: 'ObjectMapping'), objectMappingInstance.id])
                redirect objectMappingInstance
            }
            '*'{ respond objectMappingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ObjectMapping objectMappingInstance) {

        if (objectMappingInstance == null) {
            notFound()
            return
        }

        objectMappingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ObjectMapping.label', default: 'ObjectMapping'), objectMappingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'objectMapping.label', default: 'ObjectMapping'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
